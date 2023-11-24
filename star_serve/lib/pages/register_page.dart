import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:animated_background/animated_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_serve/globals.dart' as g;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String id = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {

  final _auth = FirebaseAuth.instance;
  final _dbms = FirebaseFirestore.instance;

  bool hidePswd = true;
  bool showLoading = false;

  String name = "";
  String mail = "";
  String pswd = "";
  String repswd = "";

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
                  onChanged: (value) {
                    name = value;
                  },
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
                  onChanged: (value) {
                    mail = value;
                  },
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

                    // Password show and hide functionality
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
                  onChanged: (value) {
                    repswd = value;
                  },
                  obscureText: hidePswd,
                  cursorColor: kFGColour,
                  style: kInputTextStyle,
                  decoration: kInputField.copyWith(
                    hintText: "Re-Enter Your Password Here",
                    prefixIcon: const Icon(
                      Icons.key_rounded,
                      color: navyBlue,
                    ),

                    // Password show and hide functionality
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
                        buttonCol: g.acctyp == "" || g.acctyp == "o"
                            ? deepYellow
                            : navyBlue,
                        buttonTextCol: g.acctyp == "" || g.acctyp == "o"
                            ? navyBlue
                            : deepYellow,
                        buttonText: "Volunteer",
                        pressedAction: () {
                          setState(() {
                            g.acctyp = "v";
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: RoundedButton(
                        buttonCol: g.acctyp == "" || g.acctyp == "v"
                            ? deepYellow
                            : navyBlue,
                        buttonTextCol: g.acctyp == "" || g.acctyp == "v"
                            ? navyBlue
                            : deepYellow,
                        buttonText: "Organisation",
                        pressedAction: () {
                          setState(() {
                            g.acctyp = "o";
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundedButton(
                      buttonCol: kBGColour,
                      buttonTextCol: kFGColour,
                      buttonText: "Create Account",
                      pressedAction: () async {
                        try {
                          loaderAnimation(context);
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                            email: mail,
                            password: pswd,
                          );
                          if (newUser != null) {
                            Navigator.pushNamed(context, LoginPage.id);
                          }
                        } on Exception catch (e) {
                        }
                        try{
                          _dbms.collection('users').add({
                            'name': name,
                            'email': mail,
                            'pswd': pswd,
                            'acctyp': g.acctyp,
                          });
                        }
                        on Exception catch (e){
                          print(e);
                        }
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