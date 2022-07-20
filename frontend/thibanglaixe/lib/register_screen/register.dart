import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thibanglaixe/home_screen/home.dart';
import 'package:thibanglaixe/login_screen/login.dart';
import 'package:thibanglaixe/register_screen/components/Move_to_login_screen.dart';
import 'package:thibanglaixe/register_screen/components/confirmation_password_input_field.dart';
import 'package:thibanglaixe/register_screen/components/email_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/firstname_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/lastname_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/password_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/register_button.dart';
import 'package:thibanglaixe/register_screen/components/title_area.dart';
import 'package:thibanglaixe/register_screen/components/username_input_field.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void post_data() async {
    try {
      var response = await http.post(
        Uri.parse('http://10.0.2.2:8000/register/'),
        body: {
          "username": (_usernameController).text,
          "email": (_emailController).text,
          "password": (_passwordController).text,
          "firstname": (_firstnameController).text,
          "lastname": (_lastnameController).text,
        },
      );
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      } else {
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
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(
            children: [
              title_area(size: size),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  children: [
                    username_input_field(
                        usernameController: _usernameController),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        left: 50.0,
                        right: 50.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          firstname_input_field_register(
                              size: size,
                              firstnameController: _firstnameController),
                          lastname_input_field_register(
                              size: size,
                              lastnameController: _lastnameController),
                        ],
                      ),
                    ),
                    email_input_field_register(
                        emailController: _emailController),
                    password_input_field_register(
                        passwordController: _passwordController),
                    // const confirmation_password_input_field(),
                    const SizedBox(
                      height: 15.0,
                    ),
                    // register_button(size: size),
                    GestureDetector(
                      onTap: () {
                        post_data();
                      },
                      child: Container(
                        height: 40.0,
                        width: size.width - 100.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.green,
                              Colors.black,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const move_to_login_screen(),
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
