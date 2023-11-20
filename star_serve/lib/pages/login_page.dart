import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/register_page.dart';
import 'package:star_serve/pages_o/ongoing_events.dart';
import 'package:animated_background/animated_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String id = "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>  with TickerProviderStateMixin{
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
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // kGapFiller,
                const SizedBox.square(
                  dimension: 200.0,
                  child: Image(
                    image: AssetImage("assets/images/StarServeLogoNoBG.png"),
                  ),
                ),
                kGapFiller,
                Text(
                  "StarServe",
                  style: appBranding.copyWith(fontSize: 50.0),
                ),
                kGapFiller,
                TextField(
                  // MAIL FIELD
                  cursorColor: navyBlue,
                  style: kInputTextStyle,
                  decoration: kInputField.copyWith(
                    hintText: "Enter Your Mail ID Here",
                    prefixIcon: const Icon(
                      Icons.mail_outline_rounded,
                      color: navyBlue,
                    ),
                  ),
                ),
                kGapFiller,
                TextField(
                  // PASSWORD FIELD
                  obscureText: hidePswd,
                  cursorColor: kFGColour,
                  style: kInputTextStyle,
                  decoration: kInputField.copyWith(
                    hintText: "Enter Your Password Here",
                    prefixIcon: const Icon(
                      Icons.key_rounded,
                      color: navyBlue,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        if (hidePswd == false) {
                          setState(() {
                            hidePswd = true;
                          });
                        } else {
                          setState(() {
                            hidePswd = false;
                          });
                        }
                      },
                      child: Icon(
                        hidePswd
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        color: navyBlue,
                      ),
                    ),
                  ),
                ),
                kGapFiller,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundedButton(
                      buttonCol: kBGColour,
                      buttonTextCol: kFGColour,
                      buttonText: "Login",
                      pressedAction: () {
                        //Navigator.pushNamed(context, FeedPage.id);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
