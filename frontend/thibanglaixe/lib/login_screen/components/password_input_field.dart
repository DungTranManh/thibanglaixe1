import 'package:flutter/material.dart';

class password_input_field extends StatelessWidget {
  const password_input_field({
    Key? key,
    required TextEditingController passwordlogin,
  })  : _passwordlogin = passwordlogin,
        super(key: key);

  final TextEditingController _passwordlogin;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passwordlogin,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        prefixIcon: Icon(Icons.lock),
        hintText: "Enter password...",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            const Radius.circular(
              20.0,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
      ),
    );
  }
}
