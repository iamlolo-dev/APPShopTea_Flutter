import 'package:email_password_login/view/components/timer/timer/timer.dart';
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Timer(seg: 60),
              ),
            );
          },
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Timer(seg: 120),
              ),
            );
          },
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Timer(seg: 300),
              ),
            );
          },
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Timer(seg: 240),
              ),
            );
          },
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
