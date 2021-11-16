import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Timer extends StatefulWidget {
  int seg;

  Timer({Key? key, required this.seg}) : super(key: key);

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTimerPage(
        seg: widget.seg,
      ),
    );
  }
}

// ignore: must_be_immutable
class MyTimerPage extends StatefulWidget {
  MyTimerPage({Key? key, required this.seg}) : super(key: key);

  int seg;

  @override
  State<MyTimerPage> createState() => _MyTimerPageState();
}

class _MyTimerPageState extends State<MyTimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Timer',
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green,
                Colors.green.shade100,
              ],
            ),
          ),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.seg.toString(),
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: _crearBotones(widget.seg),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _crearBotones(int seg) {
    void _sustraer() {}

    void _reset() {
      setState(() => seg = seg);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.restart_alt_outlined),
          onPressed: _reset,
        ),
        Expanded(
            child: SizedBox(
          width: 60.0,
        )),
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _sustraer,
        ),
      ],
    );
  }
}
