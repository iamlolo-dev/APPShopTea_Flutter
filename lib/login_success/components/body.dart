import 'package:flutter/material.dart';
import 'package:flutter_catalog/components/default_button.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Image.asset(
          "assets/images/success.png",
          height: 100, //40%
        ),
        SizedBox(height: 50),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: 150,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),
        ),
        Spacer(),
      ],
    ),);
  }
}
