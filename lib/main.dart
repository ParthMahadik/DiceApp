import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  void chstate(){
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: (){
                  chstate();
                },
                child: Image.asset("images/dice$leftDiceNo.png")),
          ),
          Expanded(child: TextButton(
              onPressed: (){
                chstate();
              },
              child: Image.asset("images/dice$rightDiceNo.png"))),
        ],
      ),
    );
  }
}
