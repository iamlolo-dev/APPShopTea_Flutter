import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/rendering.dart';

class Body extends StatefulWidget {
  Body({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  //variable
  int timeStart = 60;

  //timer method
  void _StartCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeStart > 0) {
        setState(
          () {
            timeStart--;
          },
        );
      } else {
        timer.cancel();
      }
    });
  }

  void _RestartCountDown() {
    setState(
      () {
        timeStart = 60;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeStart == 0 ? 'Tea DONE' : timeStart.toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _StartCountDown,
              child: Text('S T A R T'),
              color: Colors.teal,
            ),
            MaterialButton(
              onPressed: _RestartCountDown,
              child: Text("R E S T A R T"),
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
