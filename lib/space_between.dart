import 'package:flutter/material.dart';

class SpaceBetween extends StatelessWidget {
  const SpaceBetween({super.key, this.boxHeight = 50});

  final double boxHeight;

  @override
  Widget build(context) {
    return SizedBox(
      height: boxHeight,
    );
  }
}
