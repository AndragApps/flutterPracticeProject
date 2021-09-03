import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

/// DICEPAGE WHICH SHOWS UP ON MAIN SCREEN.
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    resetDice();
                  });
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    resetDice();
                  });
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          ),
        ],
      ),
    );
  }

  ///ANDRAG PVT.LTD LIBRARY.
  ///THIS METHOD HELPS TO GENERATE A RANDOM NUMBER.
  int getRandomNumber({required int maxNumber}) {
    return Random().nextInt(maxNumber) + 1;
  }

  ///ANDRAG PVT.LTD LIBRARY.
  ///THIS METHOD WILL UPDATE BOTH "LEFT & RIGHT" DICE NUMBER.
  void resetDice() {
    leftDiceNumber = getRandomNumber(maxNumber: 6);
    rightDiceNumber = getRandomNumber(maxNumber: 6);
  }
}
