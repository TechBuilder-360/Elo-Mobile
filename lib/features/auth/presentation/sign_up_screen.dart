import 'package:directory_mobile/shared/widgets/authentication_button.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../shared/widgets/elevated_button.dart';
import '../../../shared/widgets/textbox.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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

    void signup() {
      if (formKey.currentState!.validate()) {
        // Get all values here
        String email = emailController.text;
        String displayName = displayNameController.text;

        print('Email: $email');
        print('Display Name: $displayName');

        // Do your sign-up logic (API call, etc.)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Signing up...')),
        );

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OtpScreen(email: email)),
        );
      }
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
            // padding:
            child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      CustomTextField(
                          controller: emailController,
                          label: "Email Address",
                          hint: 'abc@example.com',
                          isEmail: true),
                      const SizedBox(height: 20),
                      CustomTextField(
                          controller: displayNameController,
                          label: "Display Name",
                          hint: 'display name',
                          isEmail: false),
                      Spacer(),
                      CustomAuthenticationButton(onPressed: signup, text: "Submit"),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
