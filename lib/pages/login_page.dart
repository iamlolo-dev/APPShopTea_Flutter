import 'package:flutter/material.dart';
import 'package:flutter_catalog/login_success/login_success_screen.dart';
/*import 'package:flutter_catalog/pages/page.dart';*/
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  String user = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, '/login_success');
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png"),
                SizedBox(height: 20),
                Text(
                  "Welcome $user",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(children: [
                    TextFormField(
                      maxLines: 1,
                      controller: _emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        user = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          labelText: "Email", hintText: "Enter username"),
                      onFieldSubmitted: (value) {
                        //FocusScope.of(context).requestFocus(_phoneFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Type your name";
                        }
                      },
                    ),
                    TextFormField(
                      maxLines: 1,
                      controller: _passwordController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter password"),
                      onFieldSubmitted: (value) {
                        //FocusScope.of(context).requestFocus(_phoneFocusNode);
                      },
                      validator: (value) {
                        if (value.length < 6) {
                          return "Length cannot be less than 6";
                        } else if (value.isEmpty) {
                          return "Password cannot be empty";
                        }
                      },
                    ),
                    SizedBox(height: 40),
                    Material(
                      color: Colors.green.shade700,
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 15),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          width: changeButton ? 100 : 150,
                          height: 50,
                          child: changeButton
                              ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                              : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.signupRoute),
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
                    ),
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(
                    //         minimumSize: Size(120, 45),
                    //         backgroundColor: context.theme.buttonColor),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.signupRoute);
                    //     },
                    //     child: Text("Sign Up"))
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*void signInWithEmail() async {
    // marked async
    FirebaseUser user;
    try {
      user = await _auth.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
    } catch (e) {
      print(e.toString());
    } finally {
      if (user != null) {
        // sign in successful!
        _pushPage(context, MyRoutes.singupSuccesfull);
      } else {
        // sign in unsuccessful
        print('sign in Not');
        // ex: prompt the user to try again
      }
    }
  }*/
}

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => LoginSuccessScreen() ),
    );
  }
