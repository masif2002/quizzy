import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton(this.choice, this.nextQuestion, {super.key});

  final String choice;
  final void Function(String answer) nextQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: const Color(0xFF75E6DA),
        ),
        onPressed: () {
          nextQuestion(choice);
        },
        child: Text(
          choice,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0xFF05445E),
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
