import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'pages/home_page.dart'; // Importing the HomePage widget
import 'pages/login_page.dart'; // Importing the LoginPage widget
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: MyRoutes.loginRoute,
      themeMode: ThemeMode.light, // Setting the theme mode to system default
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor:
            Colors.black, // Setting the primary color of the app to amber
      ), // Setting the theme mode
      // method to remove debug banner
      // debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
