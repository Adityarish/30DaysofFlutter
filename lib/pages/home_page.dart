import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'Gita Singh';

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // when we use curly braces to wrap arguements then it is not mandatory to pass the arguments while calling the function
    // we can pass a default value inside the function definition ({bool isThaila = false, int age = 18}) and then we can call the function without passing the arguments like this:
    return Scaffold(
      appBar: AppBar(title: Text('Catalog App')),
      body: Container(
        constraints: BoxConstraints(
          minHeight: 70,
          maxHeight: 200,
          maxWidth: 200,
          minWidth: 70,
        ),
        color: Colors.amber,
        child: Container(
          // i.e.  size must lies between the constraints which is declared in the parent
          height: 100,
          width: 100,
          color: Colors.green,
        ), // color have priority over the parent as constraints comes from down
      ),
      drawer: MyDrawer(),
    );
  }
}

// BoxConstraints is used to set the constraints on the widget
// Widgets are immutable
// let the screen be canvas and the widgets be the objects on the canvas
// they consists of Widgets, Element and RenderObject Tree
