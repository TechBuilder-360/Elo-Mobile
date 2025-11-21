import 'dart:async';
import 'package:directory_mobile/core/constants/app_assets.dart';
import 'package:directory_mobile/core/theme/app_colors.dart';
import 'package:directory_mobile/features/auth/presentation/authentication_screen.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();

    // Delay 2 seconds, then navigate
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Authentication()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: Image.asset(AppAssets.logo),
      ),
    );
  }
}
