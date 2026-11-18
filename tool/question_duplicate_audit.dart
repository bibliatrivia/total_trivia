import 'dart:io';

import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/models/question.dart';
import 'package:total_trivia/services/question_repository.dart';

typedef LocatedQuestion = ({
  String category,
  String topic,
  String level,
  int index,
  Question question,
});

final _yearPattern = RegExp(r'\b(?:18|19|20|21)\d{2}\b');
final _numberPattern = RegExp(r'\b\d+(?::\d+)?\b');
final _versePattern = RegExp(r'\b(?:[1-3]\s*)?[A-Za-z]+\s+\d+(?::\d+)?\b');

String normalize(String value) => value
    .toLowerCase()
    .trim()
    .replaceAll(RegExp(r'[\u2018\u2019\u201B\u2032]'), "'")
    .replaceAll(RegExp(r'[\u201C\u201D\u201F\u2033]'), '"')
    .replaceAll(RegExp(r'[^\p{L}\p{N}]+', unicode: true), ' ')
    .trim()
    .replaceAll(RegExp(r'\s+'), ' ');

Set<String> tokens(String value) {
  const stopWords = <String>{
    'a','an','and','are','as','at','be','by','did','do','does','for','from',
    'how','in','is','it','of','on','or','the','to','was','were','what','when',
    'where','which','who','whom','whose','why','with','according'
  };
  return normalize(value)
      .split(' ')
      .where((word) => word.length > 1 && !stopWords.contains(word))
      .toSet();
}

double jaccard(Set<String> a, Set<String> b) {
  if (a.isEmpty || b.isEmpty) return 0;
  return a.intersection(b).length / a.union(b).length;
}

String location(LocatedQuestion q) =>
    '${q.category} > ${q.topic} > ${q.level} > question ${q.index + 1}';

String correctAnswer(LocatedQuestion q) {
  final i = q.question.correctAnswer;
  return i >= 0 && i < q.question.answers.length ? q.question.answers[i] : '';
}

Set<String> years(String text) => _yearPattern.allMatches(text).map((m) => m.group(0)!).toSet();
Set<String> numbers(String text) => _numberPattern.allMatches(text).map((m) => m.group(0)!).toSet();
Set<String> verses(String text) => _versePattern.allMatches(text).map((m) => normalize(m.group(0)!)).toSet();

bool materialVariableDiffers(LocatedQuestion a, LocatedQuestion b) {
  final ay = years(a.question.question);
  final by = years(b.question.question);
  if (ay.isNotEmpty && by.isNotEmpty && ay.join('|') != by.join('|')) return true;

  final av = verses(a.question.question);
  final bv = verses(b.question.question);
  if (av.isNotEmpty && bv.isNotEmpty && av.join('|') != bv.join('|')) return true;

  final an = numbers(a.question.question);
  final bn = numbers(b.question.question);
  if (an.isNotEmpty && bn.isNotEmpty && an.join('|') != bn.join('|')) return true;

  // If two highly templated prompts have different correct answers, classify them
  // as a template family instead of a likely duplicate.
  final aa = normalize(correctAnswer(a));
  final ba = normalize(correctAnswer(b));
  if (aa.isNotEmpty && ba.isNotEmpty && aa != ba) return true;

  return false;
}

List<LocatedQuestion> allQuestions() {
  final result = <LocatedQuestion>[];
  for (final category in categories) {
    for (final topic in category.subcategories) {
      for (final level in difficulties) {
        final pool = QuestionRepository.questionsFor(category.title, topic, level);
        for (var i = 0; i < pool.length; i++) {
          result.add((category: category.title, topic: topic, level: level, index: i, question: pool[i]));
        }
      }
    }
  }
  return result;
}

void main() {
  const likelyThreshold = 0.86;
  const sameFactThreshold = 0.74;
  const maxShownPerSection = 200;
  final all = allQuestions();
  final report = StringBuffer()
    ..writeln('TOTAL TRIVIA REFINED DUPLICATE AUDIT')
    ..writeln('Generated: ${DateTime.now().toIso8601String()}')
    ..writeln('Questions inspected: ${all.length}')
    ..writeln();

  final exactMap = <String, List<LocatedQuestion>>{};
  for (final q in all) {
    exactMap.putIfAbsent(normalize(q.question.question), () => []).add(q);
  }
  final exact = exactMap.values.where((g) => g.length > 1).toList()
    ..sort((a,b) => b.length.compareTo(a.length));

  report..writeln('1. EXACT NORMALIZED DUPLICATE GROUPS: ${exact.length}')
        ..writeln('Capitalization, spacing, punctuation, and curly-quote differences are ignored.');
  for (var i = 0; i < exact.length; i++) {
    report..writeln('\n${i + 1}. ${exact[i].first.question.question}');
    for (final q in exact[i]) {
      report.writeln('   - ${location(q)} | answer: ${correctAnswer(q)}');
    }
  }
  if (exact.isEmpty) report.writeln('None found.');

  final tokenSets = all.map((q) => tokens(q.question.question)).toList(growable: false);
  final sameFact = <(double, LocatedQuestion, LocatedQuestion)>[];
  final likely = <(double, LocatedQuestion, LocatedQuestion)>[];
  var templateSuppressed = 0;
  var crossTopicSuppressed = 0;

  for (var i = 0; i < all.length; i++) {
    if (tokenSets[i].length < 3) continue;
    for (var j = i + 1; j < all.length; j++) {
      if (normalize(all[i].question.question) == normalize(all[j].question.question)) continue;
      if (tokenSets[j].length < 3) continue;

      // Near duplicates are most useful inside the same topic. Different topics
      // often contain legitimate Bible parallel accounts or generic templates.
      if (all[i].category != all[j].category || all[i].topic != all[j].topic) {
        crossTopicSuppressed++;
        continue;
      }

      final smaller = tokenSets[i].length < tokenSets[j].length ? tokenSets[i].length : tokenSets[j].length;
      final larger = tokenSets[i].length > tokenSets[j].length ? tokenSets[i].length : tokenSets[j].length;
      if (smaller / larger < 0.68) continue;

      final score = jaccard(tokenSets[i], tokenSets[j]);
      if (score < sameFactThreshold) continue;

      if (materialVariableDiffers(all[i], all[j])) {
        templateSuppressed++;
        continue;
      }

      final sameCorrectAnswer = normalize(correctAnswer(all[i])) == normalize(correctAnswer(all[j]));
      if (!sameCorrectAnswer) continue;

      if (all[i].level != all[j].level && score >= sameFactThreshold) {
        sameFact.add((score, all[i], all[j]));
      } else if (score >= likelyThreshold) {
        likely.add((score, all[i], all[j]));
      }
    }
  }

  sameFact.sort((a,b) => b.$1.compareTo(a.$1));
  likely.sort((a,b) => b.$1.compareTo(a.$1));

  report..writeln('\n\n2. SAME-FACT / DIFFERENT-DIFFICULTY CANDIDATES: ${sameFact.length}')
        ..writeln('Same topic + same correct answer + substantial wording overlap, but different levels.');
  for (var i = 0; i < sameFact.length && i < maxShownPerSection; i++) {
    final p = sameFact[i];
    report..writeln('\n${i + 1}. ${(p.$1 * 100).toStringAsFixed(0)}% similar')
          ..writeln('   A: ${p.$2.question.question}')
          ..writeln('      ${location(p.$2)}')
          ..writeln('   B: ${p.$3.question.question}')
          ..writeln('      ${location(p.$3)}')
          ..writeln('   Answer: ${correctAnswer(p.$2)}');
  }

  report..writeln('\n\n3. LIKELY NEAR-DUPLICATES WITHIN THE SAME TOPIC: ${likely.length}')
        ..writeln('High wording overlap + same correct answer + no differing year/chapter/number variable.');
  for (var i = 0; i < likely.length && i < maxShownPerSection; i++) {
    final p = likely[i];
    report..writeln('\n${i + 1}. ${(p.$1 * 100).toStringAsFixed(0)}% similar')
          ..writeln('   A: ${p.$2.question.question}')
          ..writeln('      ${location(p.$2)}')
          ..writeln('   B: ${p.$3.question.question}')
          ..writeln('      ${location(p.$3)}')
          ..writeln('   Answer: ${correctAnswer(p.$2)}');
  }

  report..writeln('\n\n4. SUPPRESSION SUMMARY')
        ..writeln('Template/year/chapter/number/different-answer candidate pairs suppressed: $templateSuppressed')
        ..writeln('Cross-topic/category pair comparisons suppressed early: $crossTopicSuppressed')
        ..writeln('\nSUMMARY')
        ..writeln('Exact duplicate groups: ${exact.length}')
        ..writeln('Same-fact/different-difficulty candidates: ${sameFact.length}')
        ..writeln('Likely same-topic near-duplicates: ${likely.length}')
        ..writeln('No question data was changed by this audit.');

  Directory('build').createSync(recursive: true);
  final out = File('build/question_duplicate_audit_refined.txt');
  out.writeAsStringSync(report.toString());
  stdout.write(report.toString());
  stdout.writeln('\nReport saved to: ${out.path}');
}
