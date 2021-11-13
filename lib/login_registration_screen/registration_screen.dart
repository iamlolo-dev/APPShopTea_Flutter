import 'package:flutter/material.dart';
import '../themes.dart';
import 'components/body.dart';

class RegistrationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: MyTheme.buttonColor),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },
      )),
      body: Body(),
    );
  }
}
