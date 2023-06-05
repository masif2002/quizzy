import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  const QuizResult(
      {super.key,
      required this.question,
      required this.yourAnswer,
      required this.correctAnswer});

  final String question;
  final String yourAnswer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Question Number
        Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.tealAccent,
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
            )),
        // Question Details
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                style: const TextStyle(color: Colors.amberAccent),
              ),
              Text(
                correctAnswer,
                style: const TextStyle(color: Colors.tealAccent),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
