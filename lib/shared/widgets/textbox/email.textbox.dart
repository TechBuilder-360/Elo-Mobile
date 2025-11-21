import 'package:flutter/material.dart';

Widget emailTextBox(TextEditingController controller) {
  var hint = "Enter your email";
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Text(
      //   label,
      //   style: const TextStyle(
      //     fontSize: 14,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      const SizedBox(height: 6),
      TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        // onChanged: onChanged,
        decoration: InputDecoration(
          labelText: "Email Address",
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
        ),
      ),
    ],
  );
}
