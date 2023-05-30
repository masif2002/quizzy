import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,
      {super.key,
      this.customFontSize = 16,
      this.customTextColor = Colors.black});

  final String text;
  final double customFontSize;
  final Color customTextColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: customFontSize,
        color: customTextColor,
      ),
    );
  }
}
