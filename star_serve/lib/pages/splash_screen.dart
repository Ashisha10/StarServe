import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'landing_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 850,
      splash: Image.asset('images/flyingRocket.gif'),
      nextScreen: LandingPage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
      splashIconSize: 3000,
    );
  }
}
