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
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 117, 230, 219),
                  Color.fromARGB(255, 212, 241, 244),
                ])),
            child: OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(
                Icons.chevron_right,
                color: Color.fromARGB(255, 5, 5, 5),
              ),
              label: const CustomText(
                'START QUIZ',
                customTextColor: Color(0xFF05445E),
              ),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.all(15),
                // color: Color.fromARGB(255, 117, 230, 219),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
