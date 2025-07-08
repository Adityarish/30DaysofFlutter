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
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      // push mean next page pop means back page
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // if we wanted to add app bar we should add Scaffold
      color: Colors.white,
      child: SingleChildScrollView(
        // to fix bottom overflow
        child: Form(
          key: _formKey,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your username";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {}); // this is only used in statefullwidget
                      },
                    ),
                    TextFormField(
                      obscureText: true, // defined before the text and it is used to hide the password
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters long";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Material(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        changeButton ? 50 : 8,
                      ),
                      child: InkWell(
                        // to use splash color it should be wrapped with Material widget
                        splashColor: Colors.green,

                        // used to make the widget clickable
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          // Ink and container is almost same and ink support splash color effect
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
                          // decoration: BoxDecoration(  when we are providing color to material then we don't need to provide decoration
                          //   color: const Color.fromARGB(
                          //     255,
                          //     62,
                          //     199,
                          //     137,
                          //   ), // we cann't provide decoration and container color both
                          //   // shape: changeButton ? BoxShape.circle: BoxShape.rectangle,
                          //   borderRadius: BorderRadius.circular(
                          //     changeButton ? 50 : 8,
                          //   ),
                          // ),
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
      ),
    );
  }
}
