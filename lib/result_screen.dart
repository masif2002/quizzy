import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rapid_quiz/data/questions.dart';
import 'package:rapid_quiz/quiz_result.dart';
import 'package:rapid_quiz/space_between.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  int getScore() {
    // ignore: unused_local_variable
    int score = 0;

    for (var i = 0; i < selectedAnswers.length; i++) {
      if (selectedAnswers[i] == questions[i].answers[0]) {
        score++;
      }
    }

    return score;
  }

  @override
  Widget build(BuildContext context) {
    var totalQuestions = selectedAnswers.length;
    int score = getScore();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "You've scored $score out of $totalQuestions!",
            style: GoogleFonts.poppins(
              fontSize: 23,
              color: Color.fromARGB(255, 113, 212, 14),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SpaceBetween(),
          ...questions.map((question) {
            print(question.question);
            print(question.question);
            final index = questions.indexOf(question);
            return QuizResult(
              question: question.question,
              yourAnswer: selectedAnswers[index],
              correctAnswer: question.answers[0],
            );
          })
        ],
      ),
    );
  }
}
