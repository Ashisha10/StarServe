import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'landing_page.dart';
import 'package:star_serve/components/constants.dart';
import 'package:animated_background/animated_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background with moving particles
        AnimatedBackground(
          behaviour: buildRandomParticleBehaviour(),
          vsync: this,
          child: Container(),
        ),
        // Splash screen with rocket
        AnimatedSplashScreen(
          duration: 850,
          splash: Image.asset('assets/images/flyingRocket.gif'),
          nextScreen: LandingPage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.transparent, // Set the background color to transparent
          splashIconSize: 3000,
        ),
      ],
    );
  }
}
