import 'package:directory_mobile/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';

class OtpScreen extends StatefulWidget {
  final String email;
  const OtpScreen({super.key, required this.email});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.45, // 50% of screen
            color: AppColors.primary,

            padding: EdgeInsets.all(0),
            child: Center(
              widthFactor: 1,
              child: Image.asset(AppAssets.loginIllustration),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Enter the 6-digit code sent to ${widget.email}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                PinCodeTextField(
                  length: 6,
                  appContext: context,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  onCompleted: (value) {
                    verifyOtp(value);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void verifyOtp(String code) {
    //Todo: Call your API here
    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home,  (route) => false,);
    print("Verifying OTP: $code");
  }
}
