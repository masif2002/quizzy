import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rapid_quiz/data/questions.dart';
import 'package:rapid_quiz/quiz_result.dart';
import 'package:rapid_quiz/space_between.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.restartQuiz, {super.key});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  int getScore() {
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Score
        Text(
          "You've scored $score out of $totalQuestions!",
          style: GoogleFonts.poppins(
            fontSize: 23,
            color: const Color.fromARGB(255, 113, 212, 14),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SpaceBetween(),

        // Results
        Center(
          child: SizedBox(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...questions.map((question) {
                    final index = questions.indexOf(question);
                    return QuizResult(
                      questionNumber: index + 1,
                      question: question.question,
                      yourAnswer: selectedAnswers[index],
                      correctAnswer: question.answers[0],
                    );
                  }),
                ],
              ),
            ),
          ),
        ),

        // Reset Button
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(
            Icons.replay,
          ),
          onPressed: restartQuiz,
          label: const Text('Reset Quiz'),
        )
      ],
    );
  }
}
