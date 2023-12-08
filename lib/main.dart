import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(AskMePage());

class AskMePage extends StatefulWidget {
  @override
  _AskMePageState createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Ask Me Anything'),
        ),
        body: Center(
          child: TextButton(
            child: Image.asset('images/ball$answer.png'),
            onPressed: () {
              setState(
                () {
                  answer = Random().nextInt(5) + 1;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
