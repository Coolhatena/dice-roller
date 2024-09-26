import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';
import 'package:dice_roller/dice_rolling.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 26, 2, 89),
            Color.fromARGB(255, 69, 13, 148),
          ],
          child: DiceRolling(),
        ),
      ),
    ),
  );
}
