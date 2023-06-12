import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  const QuizResult(
      {super.key,
      required this.questionNumber,
      required this.question,
      required this.yourAnswer,
      required this.correctAnswer});

  final int questionNumber;
  final String question;
  final String yourAnswer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    final bool isRightAnswer = yourAnswer == correctAnswer;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Question Number
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: isRightAnswer
                  ? const Color(0xFF75E6DA)
                  : const Color(0xFF189AB4),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF75E6DA),
                width: 3,
              )),
          alignment: Alignment.center,
          child: Text(
            questionNumber.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(),
          ),
        ),
        // Question Details
        SizedBox(
          width: 300,
          child: Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  yourAnswer,
                  style: const TextStyle(color: Color(0xFFD4F1F4)),
                ),
                Text(
                  correctAnswer,
                  style: const TextStyle(color: Colors.tealAccent),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
