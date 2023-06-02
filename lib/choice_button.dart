import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton(this.choice, {super.key});

  final String choice;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: const Color.fromARGB(31, 190, 18, 136)
        ),
        child: Text(choice),
        onPressed: () {},
      ),
    );
  }
}
