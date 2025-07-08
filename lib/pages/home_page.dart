import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'Gita Singh';
  @override
  Widget build(BuildContext context) {
    // when we use curly braces to wrap arguements then it is not mandatory to pass the arguments while calling the function
    // we can pass a default value inside the function definition ({bool isThaila = false, int age = 18}) and then we can call the function without passing the arguments like this:
    return Scaffold(
      appBar: AppBar(title: Text('Catalog App'), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          child: Text(
            'Hello, $name!\nEnjoy your $days days of Flutter!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
