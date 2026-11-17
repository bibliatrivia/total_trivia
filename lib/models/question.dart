class Question {
  final String question;
  final List<String> answers;
  final int correctAnswer;
  final String explanation;

  const Question({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.explanation,
  });
}