import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/const/constants.dart';

//Square button
class ReusableButton extends StatelessWidget {
  late final String text;
  late final VoidCallback onPressed;

  ReusableButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: buttonBlue,
      ),
    );
  }
}
