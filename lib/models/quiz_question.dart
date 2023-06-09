class QuizQuestion {
  QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> get shuffledAnswers {
    var ans = List.of(answers);
    ans.shuffle();
    return ans;
  }
}
