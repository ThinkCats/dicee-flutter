import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;

  void changeNumber() {
    setState(() {
      leftNumber = Random.secure().nextInt(6) + 1;
      rightNumber = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset("images/dice$leftNumber.png"),
            onPressed: () {
              changeNumber();
            },
          )),
          Expanded(
              child: TextButton(
            child: Image.asset("images/dice$rightNumber.png"),
            onPressed: () {
              changeNumber();
            },
          )),
        ],
      ),
    );
  }
}
