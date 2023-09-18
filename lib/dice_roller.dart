import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-images/dice-1.png';

  void rollDice() {
    var num = Random().nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
          width: 150,
        ),
        const SizedBox(
          height: 10,
          width: 10,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 27,
            ),
          ),
          child: const Text('Toss Me!'),
        )
      ],
    );
  }
}
