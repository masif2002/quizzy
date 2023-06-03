import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton(this.choice, this.nextQuestion, {super.key});

  final String choice;
  final void Function() nextQuestion;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color.fromARGB(31, 190, 18, 136),
      ),
      onPressed: nextQuestion,
      child: Text(choice),
    );
  }
}
