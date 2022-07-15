import 'package:flutter/material.dart';

class login_button extends StatelessWidget {
  const login_button({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Login Button Clicked");
      },
      child: Container(
        height: 45.0,
        width: size.width - 16.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green,
              Colors.black,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
