import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      buttonColor: Colors.green.shade800,
      accentColor: Colors.black,
      cardColor: Colors.white,
      canvasColor: creamColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Colors.grey.shade600)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        accentColor: Colors.white,
        buttonColor: lightBluishColor,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            textTheme: Theme.of(context).textTheme,
            iconTheme: IconThemeData(color: Colors.white)),
        brightness: Brightness.dark,
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
