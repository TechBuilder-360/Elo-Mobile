import 'package:directory_mobile/features/auth/presentation/authentication_screen.dart';
import 'package:directory_mobile/features/auth/presentation/login_screen.dart';
import 'package:directory_mobile/features/auth/presentation/otp_screen.dart';
import 'package:directory_mobile/features/auth/presentation/sign_up_screen.dart';
import 'package:directory_mobile/features/launch/presentation/launch_screen.dart';
import 'package:directory_mobile/features/onboarding/presentation/onboarding_screen.dart';
import '../features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onboard = '/onboard';
  // static const String launch = '/';

  static const String otp = '/otp';
  static const String home = '/home';
  static const String auth = '/auth';
  static const String signup = '/signup';
  static const String login = '/login';

  static Map<String, WidgetBuilder> routes = {
    onboard: (context) => OnboardingScreen(),
    // launch: (context) => LaunchScreen(),
    auth: (context) => Authentication(),
    login: (context) => LoginScreen(),
    signup: (context) => SignUpScreen(),
    otp: (context) => OtpScreen(email: '',),
    home: (context) => HomeScreen(),
  };


}