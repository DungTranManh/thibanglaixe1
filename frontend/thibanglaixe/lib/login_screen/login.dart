import 'package:flutter/material.dart';
import 'package:thibanglaixe/home_screen/home.dart';
import 'package:thibanglaixe/login_screen/components/login_button.dart';

import 'components/Move_to_Register_Screen.dart';
import 'components/email_input_field.dart';
import 'components/forgot_password.dart';
import 'components/password_input_field.dart';
import 'components/title_area.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emaillogin = TextEditingController();
  TextEditingController _passwordlogin = TextEditingController();
  @override
  void _login_check() async {
    try {
      var response = await http.post(
        Uri.parse('http://10.0.2.2:8000/login/'),
        body: {
          "username": _emaillogin.text,
          "password": _passwordlogin.text,
        },
      );
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else if (response.statusCode == 400) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              backgroundColor: Colors.greenAccent,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Something is wrong!"),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Let check your form again."),
                ],
              ),
            );
          },
        );
      } else if (response.statusCode == 404) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              backgroundColor: Colors.greenAccent,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("User does not exist!"),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Let enter the form again!"),
                ],
              ),
            );
          },
        );
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            title_area(size: size),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // const email_input_field(),
                      email_input_field(emaillogin: _emaillogin),
                      const SizedBox(
                        height: 10.0,
                      ),
                      // const password_input_field(),
                      password_input_field(passwordlogin: _passwordlogin),
                      const SizedBox(
                        height: 15.0,
                      ),
                      forgot_password(size: size),
                      const SizedBox(
                        height: 70.0,
                      ),
                      // login_button(size: size),
                      GestureDetector(
                        onTap: () {
                          _login_check();
                        },
                        child: Container(
                          height: 45.0,
                          width: size.width - 16.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.green,
                                Colors.black,
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const move_to_register_screen(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
