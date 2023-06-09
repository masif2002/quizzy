import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rapid_quiz/choice_button.dart';

import 'package:rapid_quiz/data/questions.dart';
import 'package:rapid_quiz/space_between.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(
      {super.key, required this.selectAnswer, required this.showResult});

  final void Function(String answer) selectAnswer;
  final void Function() showResult;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0;

  void nextQuestion(String answer) {
    widget.selectAnswer(answer);

    if (index + 1 >= questions.length) {
      widget.showResult();
      return;
    }

    setState(() {
      index += 1;
    });
    // ToDo: Check Maximum Index
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[index];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.center,
            ),
            const SpaceBetween(),
            ...currentQuestion.shuffledAnswers
                .map((choice) => ChoiceButton(choice, nextQuestion))
          ],
        ),
      ),
    );
  }
}
