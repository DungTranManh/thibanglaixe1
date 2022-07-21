import 'package:flutter/material.dart';

class email_input_field extends StatelessWidget {
  const email_input_field({
    Key? key,
    required TextEditingController emaillogin,
  })  : _emaillogin = emaillogin,
        super(key: key);

  final TextEditingController _emaillogin;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _emaillogin,
      decoration: const InputDecoration(
        labelText: "Email",
        prefixIcon: Icon(Icons.email),
        hintText: "Enter email...",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
      ),
    );
  }
}
