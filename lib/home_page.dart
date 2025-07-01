import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'Gita Singh';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalog App'), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          child: Text(
            'Hello, $name!\nEnjoy your $days days of Flutter',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
