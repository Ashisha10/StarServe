import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String id = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePswd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColour,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: <Widget>[
              kGapFiller,
              const SizedBox.square(
                dimension: 200.0,
                child: Image(
                  image: AssetImage("assets/images/StarServeLogo.png"),
                ),
              ),
              kGapFiller,
              Text(
                "StarServe",
                style: appBranding.copyWith(fontSize: 50.0),
              ),
              kGapFiller,
              TextField(
                cursorColor: kBGColour,
                style: kInputTextStyle,
                decoration: kInputField.copyWith(
                  prefixIcon: const Icon(
                    Icons.mail_outline_rounded,
                    color: kBGColour,
                  ),
                ),
              ),
              kGapFiller,
              TextField(
                obscureText: hidePswd,
                cursorColor: kBGColour,
                style: kInputTextStyle,
                decoration: kInputField.copyWith(
                  prefixIcon: const Icon(
                    Icons.key_rounded,
                    color: kBGColour,
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
                      color: kBGColour,
                    ),
                  ),
                ),
              ),
              kGapFiller,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundedButton(
                    buttonCol: kTrimColour,
                    buttonTextCol: kAccentColour,
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
    );
  }
}
