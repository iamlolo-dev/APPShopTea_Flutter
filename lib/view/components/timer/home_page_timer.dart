import 'package:flutter/material.dart';

class HomePageTimer extends StatefulWidget {
  @override
  State<HomePageTimer> createState() => _HomePageTimerState();
}

class _HomePageTimerState extends State<HomePageTimer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(
            Icons.alarm,
            color: Colors.teal,
          ),
          title: Text("Green tea"),
          subtitle: Text("1 minute"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.alarm,
            color: Colors.teal,
          ),
          title: Text("Black tea"),
          subtitle: Text("2 minutes"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.teal,
              )
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.alarm,
            color: Colors.teal,
          ),
          title: Text("White tea"),
          subtitle: Text("5 minutes"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.alarm,
            color: Colors.teal,
          ),
          title: Text("Red tea"),
          subtitle: Text("4 minutes"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
