import 'package:flutter/material.dart';

import 'package:rapid_quiz/custom_text.dart';
import 'package:rapid_quiz/space_between.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  height: 300,
                ),
                const SpaceBetween(boxHeight: 80),
                const CustomText(
                  'Learn Flutter the fun way!',
                  customFontSize: 28,
                  customTextColor: Colors.white,
                ),
                const SpaceBetween(),
                OutlinedButton(
                  onPressed: () {},
                  child: const CustomText(
                    'Start Quiz',
                    customTextColor: Colors.white,
                  ),
                )
              ],
            ),
          )),
    ),
  ));
}
