import 'package:directory_mobile/app/routes.dart';
import 'package:directory_mobile/features/launch/presentation/launch_screen.dart';
import 'package:directory_mobile/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final bool seenOnboarding;
  const App({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes: AppRoutes.routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 159, 151, 173)),
        useMaterial3: true,
      ),
      home: SafeArea(child: seenOnboarding ? LaunchScreen() : const OnboardingScreen()),
    );
  }
}
