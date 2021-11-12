import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
      ),
      body: Body(),
    );
  }
}
