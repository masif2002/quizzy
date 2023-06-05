class QuizQuestion {
  final String question;
  final List<String> answers;
  List<String>? shuffledAnswers;

  QuizQuestion(this.question, this.answers) {
    shuffledAnswers = [...answers];
    shuffledAnswers?.shuffle();
  }

  // List<String> shuffledAnswers() {
  //   var ans = List.of(answers);
  //   ans.shuffle();
  //   return ans;
  // }
}
