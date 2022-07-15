import 'package:flutter/material.dart';

class email_input_field extends StatelessWidget {
  const email_input_field({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
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
