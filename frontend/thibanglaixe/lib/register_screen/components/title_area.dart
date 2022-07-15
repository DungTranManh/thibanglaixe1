import 'package:flutter/material.dart';

class title_area extends StatelessWidget {
  const title_area({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height / 3 + 30.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Colors.black,
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height / 3 - 20.0,
            left: size.width / 2 + 70.0,
          ),
          child: const Text(
            "Register",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: (size.height / 3 - 90.0) / 2, left: (size.width - 120) / 2),
          child: const Icon(
            Icons.account_circle_rounded,
            size: 120.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
