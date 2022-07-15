import 'package:flutter/material.dart';

class username_input_field extends StatelessWidget {
  const username_input_field({
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
          labelText: "Username:",
          hintText: "Enter username...",
          prefixIcon: Icon(Icons.account_circle),
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
