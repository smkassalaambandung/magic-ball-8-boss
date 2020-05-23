import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: MagicBall(),
          )),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ball = Random().nextInt(5) + 1;
            });
            print('pressed = $ball');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}
