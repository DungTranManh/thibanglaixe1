import 'package:flutter/material.dart';

class forgot_password extends StatelessWidget {
  const forgot_password({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width / 2 + 10.0,
      ),
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
