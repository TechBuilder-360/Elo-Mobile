import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../shared/widgets/buttons.dart';
import '../../../shared/widgets/textbox/email.textbox.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    void signup() {
      // Todo: Make call to API to request OTP
      // Switch to OTP Screen
      String email = emailController.value.text;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtpScreen(email: email)),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.45, // 50% of screen
            padding: EdgeInsets.all(0),
            child: Center(
              widthFactor: 1,
              child: Image.asset(AppAssets.loginIllustration),
            ),
          ),
          Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: emailTextBox(emailController),
              ),
              elevatedButton(signup, "SIGN UP"),
            ],
          ),
        ],
      ),
    );
  }
}
