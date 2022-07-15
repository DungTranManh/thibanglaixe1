import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thibanglaixe/login_screen/login.dart';
import 'package:thibanglaixe/register_screen/components/Move_to_login_screen.dart';
import 'package:thibanglaixe/register_screen/components/confirmation_password_input_field.dart';
import 'package:thibanglaixe/register_screen/components/email_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/password_input_field_register.dart';
import 'package:thibanglaixe/register_screen/components/register_button.dart';
import 'package:thibanglaixe/register_screen/components/title_area.dart';
import 'package:thibanglaixe/register_screen/components/username_input_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      const username_input_field(),
                      const email_input_field_register(),
                      const password_input_field_register(),
                      const confirmation_password_input_field(),
                      const SizedBox(
                        height: 15.0,
                      ),
                      register_button(size: size),
                      const SizedBox(
                        height: 20.0,
                      ),
                      move_to_login_screen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
