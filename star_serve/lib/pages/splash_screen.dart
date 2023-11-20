import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'landing_page.dart';
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
          behaviour: RandomParticleBehaviour(
            options: const ParticleOptions(
              baseColor: Colors.white,
              spawnOpacity: 1,
              opacityChangeRate: 0.5,
              minOpacity: 0,
              maxOpacity: 1,
              spawnMinSpeed: 20.0,
              spawnMaxSpeed: 30.0,
              spawnMinRadius: 1.0,
              spawnMaxRadius: 2,
              particleCount: 90,
            ),
          ),
          vsync: this,
          child: Container(),
        ),
        // Splash screen with rocket
        AnimatedSplashScreen(
          duration: 850,
          splash: Image.asset('images/flyingRocket.gif'),
          nextScreen: LandingPage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.transparent, // Set the background color to transparent
          splashIconSize: 3000,
        ),
      ],
    );
  }
}
