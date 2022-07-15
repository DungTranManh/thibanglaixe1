import 'package:flutter/material.dart';

class title_area extends StatefulWidget {
  const title_area({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<title_area> createState() => _title_areaState();
}

class _title_areaState extends State<title_area> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.size.height / 3 + 40.0,
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
            left: widget.size.width / 2 + 70.0,
            top: widget.size.height / 3 - 20.0,
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: (widget.size.width - 100) / 2,
            top: (widget.size.height / 3 + 40.0) / 4,
          ),
          child: const Icon(
            Icons.directions_car_outlined,
            color: Colors.white,
            size: 100.0,
          ),
        )
      ],
    );
  }
}
