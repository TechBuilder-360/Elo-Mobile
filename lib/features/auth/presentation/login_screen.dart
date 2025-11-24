import 'package:directory_mobile/core/constants/app_assets.dart';
import 'package:directory_mobile/core/theme/app_colors.dart';
import 'package:directory_mobile/features/auth/presentation/otp_screen.dart';
import 'package:directory_mobile/shared/widgets/authentication_button.dart';
import 'package:directory_mobile/shared/widgets/elevated_button.dart';
import 'package:directory_mobile/shared/widgets/textbox.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController displayNameController = TextEditingController();

    @override
    void dispose() {
      emailController.dispose();
      displayNameController.dispose();
      super.dispose();
    }

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    void login() {
      // Todo: Make call to API to request OTP

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login...')),
      );

      // Switch to OTP Screen
      String email = emailController.text;
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
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child:  CustomTextField(controller: emailController, label: "Email Address", hint: 'abc@example.com', isEmail: true),
                ),
                Spacer(),
                CustomAuthenticationButton(onPressed: login, text: "Confirm"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
