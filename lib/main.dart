import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'pages/home_page.dart'; // Importing the HomePage widget
import 'pages/login_page.dart'; // Importing the LoginPage widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: '/home',
      themeMode: ThemeMode.light, // Setting the theme mode to system default
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor:
            Colors.amber, // Setting the primary color of the app to amber
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor:
            Colors.black, // Setting the primary color of the app to amber
      ), // Setting the theme mode
      routes: {'/': (context) => LoginPage(), '/home': (context) => HomePage()},
    );
  }
}
