import 'package:flutter/material.dart';

class lastname_input_field_register extends StatelessWidget {
  const lastname_input_field_register({
    Key? key,
    required this.size,
    required TextEditingController lastnameController,
  })  : _lastnameController = lastnameController,
        super(key: key);

  final Size size;
  final TextEditingController _lastnameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (size.width - 110.0) / 2,
      child: TextField(
        controller: _lastnameController,
        decoration: const InputDecoration(
          labelText: "Last name:",
          hintText: "Enter last name...",
          // prefixIcon: Icon(
          //   Icons.account_circle_sharp,
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
