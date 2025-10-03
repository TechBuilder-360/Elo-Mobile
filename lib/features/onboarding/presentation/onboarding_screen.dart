import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../home/presentation/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  Future<void> _completeOnboarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage("Welcome!", "This is the first onboarding screen."),
          _buildPage("Features", "Here we explain the app features."),
          _buildPage("Get Started", "Ready to use the app?"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _completeOnboarding(context),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  Widget _buildPage(String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 28)),
          const SizedBox(height: 12),
          Text(subtitle, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
