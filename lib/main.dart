import 'package:directory_mobile/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();

// Lock orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // only portrait
  ]).then((_) {
    runApp(App(seenOnboarding: true));
  });
}
