import 'package:flutter/material.dart';

class firstname_input_field_register extends StatelessWidget {
  const firstname_input_field_register({
    Key? key,
    required this.size,
    required TextEditingController firstnameController,
  })  : _firstnameController = firstnameController,
        super(key: key);

  final Size size;
  final TextEditingController _firstnameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (size.width - 110.0) / 2,
      child: TextField(
        controller: _firstnameController,
        decoration: const InputDecoration(
          labelText: "First name:",
          hintText: "Enter first name...",
          // prefixIcon: Icon(
          //   Icons.account_circle_outlined,
          // ),
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
