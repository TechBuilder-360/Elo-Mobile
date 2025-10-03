import 'dart:async';
import 'package:directory_mobile/features/auth/presentation/authentication_screen.dart';
import 'package:directory_mobile/features/home/presentation/home_screen.dart';
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
    var assetName = "assets/images/logo/android-chrome-512x512.png";
    return Scaffold(
      backgroundColor: Color(0xFF887481),
      body: Center(
          child: Image(
        image: AssetImage(assetName),
      )),
    );
  }
}
