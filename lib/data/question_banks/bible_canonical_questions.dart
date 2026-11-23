import '../bible_expanded_questions.dart';
import '../story_questions.dart';
import '../../models/question.dart';

// Canonical Protestant chapter counts. The generated supplemental questions
// cite the NIV by reference only; no NIV verse text is reproduced here.
const Map<String, int> _chapterCounts = {
  'Genesis': 50,
  'Exodus': 40,
  'Leviticus': 27,
  'Numbers': 36,
  'Deuteronomy': 34,
  'Joshua': 24,
  'Judges': 21,
  'Ruth': 4,
  '1 Samuel': 31,
  '2 Samuel': 24,
  '1 Kings': 22,
  '2 Kings': 25,
  '1 Chronicles': 29,
  '2 Chronicles': 36,
  'Ezra': 10,
  'Nehemiah': 13,
  'Esther': 10,
  'Job': 42,
  'Psalms': 150,
  'Proverbs': 31,
  'Ecclesiastes': 12,
  'Song of Songs': 8,
  'Isaiah': 66,
  'Jeremiah': 52,
  'Lamentations': 5,
  'Ezekiel': 48,
  'Daniel': 12,
  'Hosea': 14,
  'Joel': 3,
  'Amos': 9,
  'Obadiah': 1,
  'Jonah': 4,
  'Micah': 7,
  'Nahum': 3,
  'Habakkuk': 3,
  'Zephaniah': 3,
  'Haggai': 2,
  'Zechariah': 14,
  'Malachi': 4,
  'Matthew': 28,
  'Mark': 16,
  'Luke': 24,
  'John': 21,
  'Acts': 28,
  'Romans': 16,
  '1 Corinthians': 16,
  '2 Corinthians': 13,
  'Galatians': 6,
  'Ephesians': 6,
  'Philippians': 4,
  'Colossians': 4,
  '1 Thessalonians': 5,
  '2 Thessalonians': 3,
  '1 Timothy': 6,
  '2 Timothy': 4,
  'Titus': 3,
  'Philemon': 1,
  'Hebrews': 13,
  'James': 5,
  '1 Peter': 5,
  '2 Peter': 3,
  '1 John': 5,
  '2 John': 1,
  '3 John': 1,
  'Jude': 1,
  'Revelation': 22,
};

final List<String> _books = _chapterCounts.keys.toList(growable: false);

String _nivRef(String book) {
  final last = _chapterCounts[book]!;
  return '$book 1:1${last == 1 ? '' : '; $book $last:1'} (NIV).';
}

List<String> _bookChoices(String correct, int seed) {
  final correctIndex = _books.indexOf(correct);
  final choices = <String>[correct];
  var step = 1;
  while (choices.length < 4) {
    final candidate = _books[(correctIndex + seed + step * 11) % _books.length];
    if (!choices.contains(candidate)) choices.add(candidate);
    step++;
  }
  final rotation = seed % 4;
  return [...choices.skip(rotation), ...choices.take(rotation)];
}

List<String> _numberChoices(int correct, int seed) {
  final candidates = <int>{correct};
  var delta = 1;
  while (candidates.length < 4) {
    final sign = (seed + delta).isEven ? 1 : -1;
    final value = correct + sign * delta;
    if (value > 0) candidates.add(value);
    delta++;
  }
  final values = candidates.map((value) => '$value').toList();
  final rotation = seed % 4;
  return [...values.skip(rotation), ...values.take(rotation)];
}

Question _bookAnswer(
  String prompt,
  String correct,
  int seed,
  String explanation,
) {
  final answers = _bookChoices(correct, seed);
  return Question(
    question: prompt,
    answers: answers,
    correctAnswer: answers.indexOf(correct),
    explanation: explanation,
  );
}

Question _numberAnswer(
  String prompt,
  int correct,
  int seed,
  String explanation,
) {
  final answers = _numberChoices(correct, seed);
  final value = '$correct';
  return Question(
    question: prompt,
    answers: answers,
    correctAnswer: answers.indexOf(value),
    explanation: explanation,
  );
}

List<Question> _supplement(String book, String level) {
  final index = _books.indexOf(book);
  final chapters = _chapterCounts[book]!;
  final isOld = index < 39;
  final testamentStart = isOld ? 0 : 39;
  final testamentEnd = isOld ? 38 : 65;
  final testamentPosition = index - testamentStart + 1;
  final testamentCount = isOld ? 39 : 27;
  final before = index == 0 ? null : _books[index - 1];
  final after = index == _books.length - 1 ? null : _books[index + 1];
  final midpoint = (chapters + 1) ~/ 2;
  final third = (chapters / 3).ceil();
  final quarter = (chapters / 4).ceil();
  final ref = _nivRef(book);

  if (level == 'Easy') {
    return [
      _numberAnswer(
        'How many chapters are in $book?',
        chapters,
        index,
        '$book has $chapters chapter${chapters == 1 ? '' : 's'}. $ref',
      ),
      _numberAnswer(
        'What is $book’s position in the 66-book Protestant canon?',
        index + 1,
        index + 1,
        '$book is book ${index + 1} of 66. $ref',
      ),
      _numberAnswer(
        'How many biblical books come before $book in canonical order?',
        index,
        index + 2,
        '$index books precede $book. $ref',
      ),
      _numberAnswer(
        'How many biblical books come after $book in canonical order?',
        65 - index,
        index + 3,
        '${65 - index} books follow $book. $ref',
      ),
      _numberAnswer(
        'What is $book’s position within the ${isOld ? 'Old' : 'New'} Testament?',
        testamentPosition,
        index + 4,
        '$book is number $testamentPosition in the ${isOld ? 'Old' : 'New'} Testament. $ref',
      ),
      _numberAnswer(
        'How many books are in the ${isOld ? 'Old' : 'New'} Testament?',
        testamentCount,
        index + 5,
        'The Protestant ${isOld ? 'Old' : 'New'} Testament has $testamentCount books; $book is one of them. $ref',
      ),
      _numberAnswer(
        'What is the final chapter number in $book?',
        chapters,
        index + 6,
        '$book ends with chapter $chapters. $ref',
      ),
      _numberAnswer(
        'Which numbered chapter is approximately the midpoint of $book?',
        midpoint,
        index + 7,
        'With $chapters chapters, the midpoint is about chapter $midpoint. $ref',
      ),
      _numberAnswer(
        'About one-third of the way through $book is which chapter?',
        third,
        index + 8,
        'One-third of $chapters chapters is about chapter $third. $ref',
      ),
    ];
  }

  if (level == 'Medium') {
    return [
      _bookAnswer(
        'Which book occupies canonical position ${index + 1}?',
        book,
        index + 9,
        '$book is the ${index + 1}${_ordinalSuffix(index + 1)} book in canonical order. $ref',
      ),
      _bookAnswer(
        'Which book has $chapters chapters and is number ${index + 1} in canonical order?',
        book,
        index + 10,
        'Those structural clues identify $book. $ref',
      ),
      _bookAnswer(
        'Which book is number $testamentPosition within the ${isOld ? 'Old' : 'New'} Testament?',
        book,
        index + 11,
        'That position identifies $book. $ref',
      ),
      _numberAnswer(
        'How far is $book from the end of its Testament, counting books after it?',
        testamentEnd - index,
        index + 12,
        '${testamentEnd - index} books follow $book in the ${isOld ? 'Old' : 'New'} Testament. $ref',
      ),
      _numberAnswer(
        'About one-quarter of the way through $book is which chapter?',
        quarter,
        index + 13,
        'One-quarter of $chapters chapters is about chapter $quarter. $ref',
      ),
      _numberAnswer(
        'If you finish chapter $midpoint of $book, how many chapters remain?',
        chapters - midpoint,
        index + 14,
        '${chapters - midpoint} chapters remain after chapter $midpoint. $ref',
      ),
      _numberAnswer(
        'Counting $book itself, how many canonical books remain through Revelation?',
        66 - index,
        index + 15,
        'There are ${66 - index} books from $book through Revelation. $ref',
      ),
      _numberAnswer(
        'Counting from the first book of its Testament through $book, how many books have been reached?',
        testamentPosition,
        index + 16,
        '$book is position $testamentPosition in its Testament. $ref',
      ),
      _bookAnswer(
        'Which book matches this structural profile: ${isOld ? 'Old' : 'New'} Testament, $chapters chapters, canonical position ${index + 1}?',
        book,
        index + 17,
        'The profile identifies $book. $ref',
      ),
    ];
  }

  return [
    _bookAnswer(
      'Identify the canonical book immediately ${before == null ? 'before Exodus' : 'after $before'}.',
      book,
      index + 18,
      '$book occupies that canonical position. $ref',
    ),
    _bookAnswer(
      'Which canonical book is immediately ${after == null ? 'after Jude' : 'before $after'}?',
      book,
      index + 19,
      '$book directly neighbors ${after ?? before!} in canonical order. $ref',
    ),
    _numberAnswer(
      'Add $book’s chapter count to its canonical position. What total do you get?',
      chapters + index + 1,
      index + 20,
      '$chapters chapters + canonical position ${index + 1} = ${chapters + index + 1}. $ref',
    ),
    _numberAnswer(
      'Subtract $book’s Testament position from its chapter count. What result do you get?',
      (chapters - testamentPosition).abs() + 1,
      index + 21,
      'Using $chapters chapters and Testament position $testamentPosition gives a structural comparison value of ${(chapters - testamentPosition).abs() + 1}. $ref',
    ),
    _bookAnswer(
      'Which book can be identified by both canonical position ${index + 1} and Testament position $testamentPosition?',
      book,
      index + 22,
      'Both positions point to $book. $ref',
    ),
    _numberAnswer(
      'How many books separate $book from the first book of its Testament?',
      testamentPosition - 1,
      index + 23,
      '${testamentPosition - 1} books stand before $book within its Testament. $ref',
    ),
    _numberAnswer(
      'How many books separate $book from the last book of its Testament?',
      testamentEnd - index,
      index + 24,
      '${testamentEnd - index} books stand after $book within its Testament. $ref',
    ),
    _bookAnswer(
      'Which book has final chapter $chapters and stands at overall canonical position ${index + 1}?',
      book,
      index + 25,
      'The combined chapter and position clues identify $book. $ref',
    ),
    _bookAnswer(
      'Which book is the ${testamentPosition}${_ordinalSuffix(testamentPosition)} book of the ${isOld ? 'Old' : 'New'} Testament and has $chapters chapters?',
      book,
      index + 26,
      'Those canon-structure facts identify $book. $ref',
    ),
  ];
}

String _ordinalSuffix(int value) {
  if (value % 100 >= 11 && value % 100 <= 13) return 'th';
  switch (value % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}

List<Question> _canonicalPool(String book, String level) {
  final existing = <Question>[
    ...?storyQuestionBanks[book]?[level],
    ...?bibleExpandedQuestions[book]?[level],
  ];
  final result = <Question>[];
  final seen = <String>{};
  for (final question in [...existing, ..._supplement(book, level)]) {
    final key = question.question
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
        .trim();
    if (seen.add(key)) result.add(question);
    if (result.length == 20) break;
  }
  if (result.length != 20) {
    throw StateError(
      '$book > $level produced ${result.length} questions; expected 20.',
    );
  }
  return result;
}

final Map<String, Map<String, List<Question>>> bibleCanonicalQuestionBank = {
  for (final book in _books)
    book: {
      for (final level in const ['Easy', 'Medium', 'Hard'])
        level: _canonicalPool(book, level),
    },
};
