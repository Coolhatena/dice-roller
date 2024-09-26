import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
int getDiceRollNumber() {
  return randomizer.nextInt(6) + 1;
}

class DiceRolling extends StatefulWidget {
  const DiceRolling({super.key});

  @override
  State<DiceRolling> createState() {
    return _DiceRollingState();
  }
}

class _DiceRollingState extends State<DiceRolling> {
  var currentDiceRoll = getDiceRollNumber();

  void rollDice() {
    setState(() {
      currentDiceRoll = getDiceRollNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text("Roll dice"),
        )
      ],
    );
  }
}
