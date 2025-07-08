import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // if a variable stated with '_' then it is private
  // state means the data that is changing over time
  String name = "";
  bool changeButton = false;
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {}); // this is only used in statefullwidget
                    },
                  ),
                  TextFormField(
                    obscureText: true, // defined before the text
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    // used to make the widget clickable
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(milliseconds: 500));
                      Navigator.pushNamed(
                        context,
                        MyRoutes.homeRoute,
                      ); // push mean next page pop means back page
                    },
                    child: AnimatedContainer(
                      // container is used to create a box  but not ans animation
                      duration: Duration(milliseconds: 500),
                      width: changeButton ? 50 : 180,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          62,
                          199,
                          137,
                        ), // we cann't provide decoration and container color both
                        // shape: changeButton ? BoxShape.circle: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login", style: TextStyle(fontSize: 20)),
                  //   onPressed: r() {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes.homeRoute,
                  //     ); //Navigating to the home page uses Navigator class # push mtlb aage jana pop mtlb piche aana
                  //     print("Logged in Successfully");
                  //   },
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(180, 50),
                  //     // foregroundColor: WidgetStatePropertyAll(Colors.white),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
