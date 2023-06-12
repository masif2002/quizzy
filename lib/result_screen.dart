import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_result.dart';
import 'package:quiz_app/space_between.dart';

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
        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: 23,
              color: const Color(0xFF75E6DA),
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              const TextSpan(text: "You've scored "),
              TextSpan(
                  text: score.toString(),
                  style: const TextStyle(color: Colors.white)),
              const TextSpan(text: " out of "),
              TextSpan(
                  text: '$totalQuestions',
                  style: const TextStyle(color: Colors.white)),
              const TextSpan(text: "!"),
            ],
          ),
        ),

        const SpaceBetween(),

        // Results
        Center(
          child: SizedBox(
            height: 400,
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
        // Space
        const SpaceBetween(
          boxHeight: 40,
        ),
        // Reset Button
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          onPressed: restartQuiz,
          // icon: const Icon(
          //   Icons.replay,
          //   // textDirection: TextDirection.rtl,
          // ),
          // label: const Text(
          //   'Reset Quiz',
          //   style: TextStyle(fontSize: 20),
          // ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Reset Quiz ',
                style: TextStyle(fontSize: 20),
              ),
              Icon(
                Icons.refresh_rounded,
                size: 22,
              ),
            ],
          ),
        )
      ],
    );
  }
}
