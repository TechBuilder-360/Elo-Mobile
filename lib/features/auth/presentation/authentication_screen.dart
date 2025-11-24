import 'package:directory_mobile/features/auth/presentation/login_screen.dart';
import 'package:directory_mobile/features/auth/presentation/sign_up_screen.dart';
// import 'package:directory_mobile/shared/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    void signUp() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    }

    void login() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.45, // 50% of screen
            width: screenWidth,
            color: AppColors.background,
            padding: EdgeInsets.all(0),
            child: Image.asset(AppAssets.loginIllustration),
          ),
          SizedBox(height: 30), // Spacing between buttons
          elevatedButton(login, "Login"),
          SizedBox(height: 20), // Spacing between buttons
          elevatedButton(signUp, "Sign Up", ),
        ],
      ),
    );
  }

  Widget elevatedButton(void Function() onPressed, String text) {
    return FractionallySizedBox(
      widthFactor: 0.8, // 80% of screen width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[700],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(text),
      ),
    );
  }

}
