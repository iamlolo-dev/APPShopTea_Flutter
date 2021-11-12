import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.green,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white)),
        brightness: Brightness.dark,
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff3f583b);
  static Color lightBluishColor = Vx.indigo500;
}
