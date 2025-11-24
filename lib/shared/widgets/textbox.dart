import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool isEmail;

  const CustomTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        // const SizedBox(height: 2),
        TextField(
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.black38),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.5),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
