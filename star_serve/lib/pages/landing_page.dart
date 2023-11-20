import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  static const String id = "landing_page";

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin{
  bool hidePswd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
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
        child: Container(
          //color: Colors.black,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("images/star.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // APP ICON
                  const SizedBox.square(
                    dimension: 200.0,
                    child: Image(
                      image: AssetImage(
                          "assets/images/StarServeLogoNoBG.png"), // TODO : Add new image
                    ),
                  ),
                  kGapFiller,
                  Text(
                    "StarServe",
                    style: appBranding.copyWith(fontSize: 50.0),
                  ),
                  kGapFiller,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RoundedButton(
                        buttonCol: navyBlue,
                        buttonTextCol: lightYellow,
                        buttonText: "Register",
                        pressedAction: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                      ),
                      // kGapFiller,
                      RoundedButton(
                        buttonCol: deepYellow,
                        buttonTextCol: navyBlue,
                        buttonText: "Login",
                        pressedAction: () {
                          Navigator.pushNamed(context, LoginPage.id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
