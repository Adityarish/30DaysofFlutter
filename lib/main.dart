import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'pages/home_page.dart'; // Importing the HomePage widget
import 'pages/login_page.dart'; // Importing the LoginPage widget
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: MyRoutes
          .homeRoute, //  default route while developing a page we should use initialRoute

      themeMode: ThemeMode.light, // Setting the theme mode to system default
      theme: MyTheme.darkTheme(context),
      darkTheme: MyTheme.darkTheme(context), // Setting the theme mode
      // method to remove debug banner
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
