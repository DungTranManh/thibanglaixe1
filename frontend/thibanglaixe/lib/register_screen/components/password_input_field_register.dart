import 'package:flutter/material.dart';

class password_input_field_register extends StatelessWidget {
  const password_input_field_register({
    Key? key,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 50.0,
        right: 50.0,
      ),
      child: TextField(
        controller: _passwordController,
        decoration: const InputDecoration(
          labelText: "Password:",
          hintText: "Enter password...",
          prefixIcon: Icon(
            Icons.lock,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
