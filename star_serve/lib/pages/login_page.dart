import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/register_page.dart';
import 'package:star_serve/pages_o/ongoing_events.dart';
import 'package:animated_background/animated_background.dart';
<<<<<<< HEAD
import 'package:star_serve/pages/profile_page.dart';
=======
import 'package:star_serve/pages_v/explore_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
>>>>>>> 4ca4d1c87a5127161b308016c2c04fe6a81d5ada

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String id = "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  bool hidePswd = true;
  final _auth = FirebaseAuth.instance;

  String mail = "";
  String pswd = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  kGapFiller,
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
                    onChanged: (value) {
                      mail = value;
                    },
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
<<<<<<< HEAD
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
                        Navigator.pushNamed(context, ProfilePage.id);
                      },
=======
                  kGapFiller,
                  TextField(
                    // PASSWORD FIELD
                    onChanged: (value) {
                      pswd = value;
                    },
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
>>>>>>> 4ca4d1c87a5127161b308016c2c04fe6a81d5ada
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
                        pressedAction: () async {
                          try {
                            final user = await _auth.signInWithEmailAndPassword(
                              email: mail,
                              password: pswd,
                            );
                            if (user != null) {
                              Navigator.pushNamed(
                                  context, OngoingEventsPage.id);
                            }
                          } on Exception catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
