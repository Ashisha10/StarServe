import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.buttonCol,
    required this.buttonTextCol,
    required this.buttonText,
    required this.pressedAction,
  });

  final Color buttonCol;
  final Color buttonTextCol;
  final String buttonText;
  final VoidCallback pressedAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Material(
        elevation: 5.0,
        color: buttonCol,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: pressedAction,
          minWidth: 125.0,
          height: 50.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonTextCol,
              fontWeight: FontWeight.w700,
              fontFamily: "SF-Pro",
            ),
          ),
        ),
      ),
    );
  }
}