import '../geography_misc_questions.dart';
import '../../models/question.dart';

/// Canonical Geography question bank used by Total Trivia.
///
/// During the staged migration, Geography is sourced from the existing audited
/// geography bank while the remaining categories continue using legacy banks.
/// This gives QuestionRepository one stable Geography entry point without
/// changing any of the 300 active Geography questions.
final Map<String, Map<String, List<Question>>> geographyQuestionBank =
    geographyMiscQuestionBanks['Geography']!;
