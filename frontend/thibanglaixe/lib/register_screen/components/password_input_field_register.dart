import 'package:flutter/material.dart';

class password_input_field_register extends StatelessWidget {
  const password_input_field_register({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 15.0,
        left: 50.0,
        right: 50.0,
      ),
      child: TextField(
        decoration: InputDecoration(
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
