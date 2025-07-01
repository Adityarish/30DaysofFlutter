import 'package:flutter/material.dart';
import 'home_page.dart'; // Importing the HomePage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    num temp = 30.5; // num can store both int and double
    double dou = 30.5; // double variable
    String name = 'Gita Singh'; // String variable
    bool ispresent = true; // boolean variable
    var isActive = true; // var can infer type, here it's bool
    const pi = 3.14; // constant variable cannot change
    final pi2 = 3.14; // final variable cannot change
    // final and const are similar but const is compile-time constant that is known at compile time,
    //while final is a runtime constant that can be set at runtime. it size may vary in case of list and map
    return MaterialApp(home: HomePage());
  }
}
