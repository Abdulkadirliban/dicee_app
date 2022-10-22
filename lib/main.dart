import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftdicebtn = 1;
  int rightdicebtn = 1;
  void updatediceNumber() {
    setState(() {
      rightdicebtn = Random().nextInt(6) + 1;
      leftdicebtn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                updatediceNumber();
              },
              child: Image.asset('assets/images/dice$leftdicebtn.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  updatediceNumber();
                },
                child: Image.asset('assets/images/dice$rightdicebtn.png')),
          ),
        ],
      ),
    );
  }
}
