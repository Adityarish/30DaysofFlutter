import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // to fix bottom overflow
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginImg.jpg",
              fit: BoxFit.cover,
              height: 600,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true, // defined before the text
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text("Login", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MyRoutes.homeRoute,
                      ); //Navigating to the home page uses Navigator class # push mtlb aage jana pop mtlb piche aana
                      print("Logged in Successfully");
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(180, 50),
                      // foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
