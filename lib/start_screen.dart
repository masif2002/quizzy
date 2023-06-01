import 'package:flutter/material.dart';

import 'package:rapid_quiz/custom_text.dart';
import 'package:rapid_quiz/space_between.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(154, 255, 255, 255),
          ),
          const SpaceBetween(boxHeight: 80),
          const CustomText(
            'Learn Flutter the fun way!',
            customFontSize: 28,
            customTextColor: Colors.white,
          ),
          const SpaceBetween(),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            label: const CustomText(
              'Start Quiz',
              customTextColor: Colors.white,
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              side: const BorderSide(
                color: Color.fromARGB(255, 50, 25, 164),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
