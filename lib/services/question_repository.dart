import '../data/catalog.dart';
import '../data/christmas_carols_questions.dart';
import '../data/curated_additions.dart';
import '../data/expanded_questions.dart';
import '../data/geography_misc_questions.dart';
import '../data/new_reviewed_questions.dart';
import '../data/new_sports_questions.dart';
import '../data/question_banks/bible_canonical_questions.dart';
import '../data/question_banks/books_core_questions.dart';
import '../data/question_banks/harry_potter_books_questions.dart';
import '../data/question_banks/harry_potter_movies_1_4_questions.dart';
import '../data/question_banks/harry_potter_movies_5_8_questions.dart';
import '../data/question_banks/history_questions.dart';
import '../data/question_banks/holidays_questions.dart';
import '../data/question_banks/movies_core_questions.dart';
import '../data/question_banks/movies_genres_studios_questions.dart';
import '../data/question_banks/package_1_checkpoint_1_questions.dart';
import '../data/question_banks/package_1_checkpoint_2_questions.dart';
import '../data/question_banks/package_1_checkpoint_3_questions.dart';
import '../data/question_banks/package_1_checkpoint_4_questions.dart';
import '../data/sample_questions.dart';
import '../data/sports_history_additions.dart';
import '../models/question.dart';

/// Central source for the exact question pools served by Total Trivia.
class QuestionRepository {
  const QuestionRepository._();

  static List<Question> questionsFor(
    String category,
    String topic,
    String level,
  ) {
    final package1 = _package1QuestionsFor(category, topic, level);
    if (package1 != null) return package1;

    if (category == 'Bible') {
      return bibleCanonicalQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Geography') {
      return geographyMiscQuestionBanks['Geography']?[topic]?[level] ??
          <Question>[];
    }
    if (category == 'History') {
      return historyQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Holidays') {
      return holidaysQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Movies' &&
        harryPotterMovies1to4QuestionBank.containsKey(topic)) {
      return harryPotterMovies1to4QuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Movies' &&
        harryPotterMovies5to8QuestionBank.containsKey(topic)) {
      return harryPotterMovies5to8QuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Movies' && moviesCoreQuestionBank.containsKey(topic)) {
      return moviesCoreQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Movies' &&
        moviesGenresStudiosQuestionBank.containsKey(topic)) {
      return moviesGenresStudiosQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Books' &&
        harryPotterBooksQuestionBank.containsKey(topic)) {
      return harryPotterBooksQuestionBank[topic]?[level] ?? <Question>[];
    }
    if (category == 'Books' && booksCoreQuestionBank.containsKey(topic)) {
      return booksCoreQuestionBank[topic]?[level] ?? <Question>[];
    }

    // Fallbacks preserve any still-legacy Harry Potter leaves while migrations
    // are staged. These should normally be bypassed by the canonical banks.
    if (category == 'Movies' && harryPotterMovies.contains(topic)) {
      return _legacyQuestionsFor('Harry Potter', topic, level);
    }
    if (category == 'Books' && harryPotterBooks.contains(topic)) {
      return _legacyQuestionsFor('Harry Potter', topic, level);
    }
    if (category == 'Books') {
      return _legacyQuestionsFor('Good Books', topic, level);
    }
    return _legacyQuestionsFor(category, topic, level);
  }

  static List<Question>? _package1QuestionsFor(
    String category,
    String topic,
    String level,
  ) {
    for (final bank in [
      package1Checkpoint1QuestionBanks,
      package1Checkpoint2QuestionBanks,
      package1Checkpoint3QuestionBanks,
      package1Checkpoint4QuestionBanks,
    ]) {
      final questions = bank[category]?[topic]?[level];
      if (questions != null && questions.isNotEmpty) return questions;
    }
    return null;
  }

  static List<Question> _legacyQuestionsFor(
    String category,
    String topic,
    String level,
  ) {
    if (category == 'Sports' && sportsHistoryAdditions.containsKey(topic)) {
      final added = sportsHistoryAdditions[topic]?[level] ?? <Question>[];
      final original =
          expandedQuestionBanks[category]?[topic]?[level] ?? <Question>[];
      return [...original, ...added];
    }
    final additions = curatedAdditions[category]?[topic]?[level];
    if (additions != null && additions.isNotEmpty) {
      final original =
          newReviewedQuestionBanks[category]?[topic]?[level] ?? <Question>[];
      return [...original, ...additions];
    }
    final carols = christmasCarolsQuestionBanks[category]?[topic]?[level];
    if (carols != null && carols.isNotEmpty) return carols;
    final sports = newSportsQuestionBanks[category]?[topic]?[level];
    if (sports != null && sports.isNotEmpty) return sports;
    final reviewed = newReviewedQuestionBanks[category]?[topic]?[level];
    if (reviewed != null && reviewed.isNotEmpty) return reviewed;
    final expanded = expandedQuestionBanks[category]?[topic]?[level];
    if (expanded != null && expanded.isNotEmpty) return expanded;
    return sampleQuestionBanks[category]?[topic]?[level] ?? <Question>[];
  }
}
