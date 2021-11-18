// ignore_for_file: must_call_super

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

  late Timer _time;

  void initState() => _time = Timer.periodic(
        Duration(seconds: 1),
        (timer) {
          if (timeStart > 0) {
            setState(() {
              timeStart--;
            });
          }
        },
      );

  void dispose() {
    setState(() {
      timeStart = this.timeStart;
      _time.cancel();
    });
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
            _timeButtons(),
            _teaButton1(),
            _teaButton2(),
          ],
        ),
      ),
    );
  }

  Widget _timeButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: initState,
            child: Icon(Icons.play_arrow),
            backgroundColor: Colors.teal,
          ),
          FloatingActionButton(
            onPressed: dispose,
            child: Icon(Icons.restart_alt_outlined),
            backgroundColor: Colors.teal,
          )
        ],
      ),
    );
  }

  Widget _teaButton1() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () => setState(() {
              timeStart = 60;
              _time.cancel();
            }),
            label: Text("Green tea"),
            backgroundColor: Colors.green,
          ),
          FloatingActionButton.extended(
            onPressed: () => setState(
              () {
                timeStart = 120;
                _time.cancel();
              },
            ),
            label: Text("Black tea"),
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _teaButton2() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () => setState(
              () {
                timeStart = 240;
                _time.cancel();
              },
            ),
            label: Text("White tea"),
            backgroundColor: Colors.grey,
          ),
          FloatingActionButton.extended(
            onPressed: () => setState(() {
              timeStart = 180;
              _time.cancel();
            }),
            label: Text("Red tea"),
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}
