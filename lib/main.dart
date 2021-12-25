import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  int leftImageNumber = 3;
  int rightImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button pressed!');
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button pressed!');
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
