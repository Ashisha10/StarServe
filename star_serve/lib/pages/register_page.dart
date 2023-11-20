import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:animated_background/animated_background.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String id = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>  with TickerProviderStateMixin{
  bool hidePswd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: SingleChildScrollView(
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
                  // NAME FIELD
                  cursorColor: deepYellow,
                  style: kInputTextStyle,
                  decoration: kInputField.copyWith(
                    hintText: "Enter Your Name Here",
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
                      color: navyBlue,
                    ),
                  ),
                ),
                kGapFiller,
                TextField(
                  // MAIL FIELD
                  cursorColor: kFGColour,
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
                TextField(
                  // CONFIRM PASSWORD FIELD
                  obscureText: hidePswd,
                  cursorColor: kFGColour,
                  style: kInputTextStyle,
                  decoration: kInputField.copyWith(
                    hintText: "Re-Enter Your Password Here",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RoundedButton(
                        buttonCol: deepYellow,
                        buttonTextCol: navyBlue,
                        buttonText: "Individual",
                        pressedAction: () {
                          // TODO : add color change for button press
                          //send volunteer status to cloud
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: RoundedButton(
                        buttonCol: deepYellow,
                        buttonTextCol: navyBlue,
                        buttonText: "Organisation",
                        pressedAction: () {
                          // TODO : add color change for button press
                          //send volunteer status to cloud
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundedButton(
                      buttonCol: lightYellow,
                      buttonTextCol: navyBlue,
                      buttonText: "Create Account",
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
    );
  }
}
