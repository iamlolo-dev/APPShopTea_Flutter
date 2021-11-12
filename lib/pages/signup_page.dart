import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      body: SafeArea(
        child: ListView(children: [
          Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Sign Up".text.bold.xl6.color(Colors.green.shade700).make(),
                SizedBox(height: 10),
                "Create Your Account".text.xl3.make(),
                SizedBox(height: 25),
                CupertinoFormSection(
                  header: "Personal Details"
                      .text
                      .color(Colors.black)
                      .make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        padding: EdgeInsets.symmetric(),
                        prefix:
                            "Name".text.color(Colors.black).make(),
                        placeholder: "Enter Name",
                      ),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        padding: EdgeInsets.symmetric(),
                        prefix: "Phone"
                            .text
                            .color(Colors.black)
                            .make(),
                        placeholder: "Enter Phone",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CupertinoFormSection(
                  header: "User Details"
                      .text
                      .color(Colors.black)
                      .make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        padding: EdgeInsets.symmetric(),
                        prefix: "Email"
                            .text
                            .color(Colors.black)
                            .make(),
                        placeholder: "Enter Email",
                      ),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        padding: EdgeInsets.symmetric(),
                        prefix: "Password"
                            .text
                            .color(Colors.black)
                            .make(),
                        placeholder: "Enter Password",
                        obscureText: true,
                      ),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        padding: EdgeInsets.symmetric(),
                        prefix: "Confirm Password"
                            .text
                            .color(Colors.black)
                            .make(),
                        placeholder: "Enter Password",
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CupertinoFormSection(
                  header: "Term and Condition"
                      .text
                      .color(Colors.black)
                      .make(),
                  children: [
                    CupertinoFormRow(
                      child: Switch(
                        activeColor: Colors.green.shade700,
                        value: true,
                        onChanged: (value) {},
                      ),
                      prefix: "I Agree"
                          .text
                          .color(Colors.black)
                          .make(),
                    ),
                  ],
                ),
                45.heightBox,
                Material(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ).centered(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
