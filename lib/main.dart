import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'pages/home_page.dart'; // Importing the HomePage widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.system, // Setting the theme mode to system default
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch:
            Colors.blue, // Setting the primary color of the app to amber
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch:
            Colors.blue, // Setting the primary color of the app to amber
      ), // Setting the theme mode
    );
  }
}
