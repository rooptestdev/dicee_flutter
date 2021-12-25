import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void DiceChangeNumber() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
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
                DiceChangeNumber();
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceChangeNumber();
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
