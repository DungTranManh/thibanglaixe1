import 'package:flutter/material.dart';

class username_input_field extends StatelessWidget {
  const username_input_field({
    Key? key,
    required TextEditingController usernameController,
  })  : _usernameController = usernameController,
        super(key: key);

  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 50.0,
        right: 50.0,
      ),
      child: TextField(
        controller: _usernameController,
        decoration: const InputDecoration(
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
