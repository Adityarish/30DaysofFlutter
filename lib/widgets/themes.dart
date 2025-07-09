import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: Theme.of(context).textTheme.headlineMedium,
    ), //  this change will we applied on each appbar
    // fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: Theme.of(
        context,
      ).textTheme.headlineMedium?.apply(color: Colors.white),
    ), //  this change will we applied on each appbar
    // fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
  );
}
