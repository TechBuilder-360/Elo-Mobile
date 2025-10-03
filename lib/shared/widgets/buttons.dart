import 'package:flutter/material.dart';

Widget elevatedButton(void Function() onPressed, String text) {
  return FractionallySizedBox(
    widthFactor: 0.8, // 80% of screen width
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(text),
    ),
  );
}
