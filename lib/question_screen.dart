import 'package:flutter/material.dart';
import 'package:rapid_quiz/choice_button.dart';

import 'package:rapid_quiz/data/questions.dart';
import 'package:rapid_quiz/space_between.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(color: Colors.white),
          ),
          const SpaceBetween(),
          ...currentQuestion.answers.map((choice) => ChoiceButton(choice))
        ],
      ),
    );
  }
}
