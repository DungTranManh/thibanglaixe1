import 'package:flutter/material.dart';

class confirmation_password_input_field extends StatelessWidget {
  const confirmation_password_input_field({
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
          labelText: "Confirm:",
          hintText: "Enter password...",
          prefixIcon: Icon(Icons.beenhere),
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
