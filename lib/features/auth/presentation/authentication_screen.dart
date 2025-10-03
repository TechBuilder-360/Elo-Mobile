import 'package:directory_mobile/shared/widgets/buttons.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black87, Colors.grey[900]!],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevatedButton(signUp, "Sign Up"),
              SizedBox(height: 20), // Spacing between buttons
              elevatedButton(login, "Login"),
            ],
          ),
        ),
      ),
    );
  }

  void signUp() {}

  void login() {}
}
