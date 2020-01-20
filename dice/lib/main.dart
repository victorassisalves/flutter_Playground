import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DiceAppBody(),
      ),
    ),
  );
}

class DiceAppBody extends StatefulWidget {
  @override
  _DiceAppBodyState createState() => _DiceAppBodyState();
}

class _DiceAppBodyState extends State<DiceAppBody> {
  int topDiceNumber = 1;
  int bottomDiceNumber = 1;
  void generateRandomNumber() {
    setState(() {
      bottomDiceNumber = Random().nextInt(6) + 1;
      topDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                highlightColor: Colors.redAccent,
                onPressed: () {
                  generateRandomNumber();
                },
                child: Image.asset('images/dice$topDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                highlightColor: Colors.redAccent,
                onPressed: () {
                  generateRandomNumber();
                },
                child: Image.asset('images/dice$bottomDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
