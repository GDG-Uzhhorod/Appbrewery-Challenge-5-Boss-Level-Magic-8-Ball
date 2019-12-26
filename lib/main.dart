import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anithing'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              setNewAnswear();
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }

  void setNewAnswear() {
    ballNumber = Random().nextInt(4) + 1;
    print(ballNumber);
    setState(() {});
  }
}
