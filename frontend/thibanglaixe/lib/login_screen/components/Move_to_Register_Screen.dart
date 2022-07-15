import 'package:flutter/material.dart';

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
