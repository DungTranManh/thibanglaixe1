import 'package:flutter/material.dart';
import 'package:thibanglaixe/login_screen/components/login_button.dart';

import 'components/email_input_field.dart';
import 'components/forgot_password.dart';
import 'components/password_input_field.dart';
import 'components/title_area.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      const email_input_field(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const password_input_field(),
                      const SizedBox(
                        height: 15.0,
                      ),
                      forgot_password(size: size),
                      const SizedBox(
                        height: 70.0,
                      ),
                      login_button(size: size),
                      const SizedBox(
                        height: 50.0,
                      ),
                      move_to_register_screen(),
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

class move_to_register_screen extends StatelessWidget {
  const move_to_register_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Register!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
            ),
          ),
        )
      ],
    );
  }
}
