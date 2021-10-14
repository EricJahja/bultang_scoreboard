import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/const/constants.dart';

//Round blue button (similar to reusable_button)
class ReusableCircleButton extends StatelessWidget {
  late final IconData icon;
  late final VoidCallback onPressed;

  ReusableCircleButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
        child: Icon(
          icon,
          color: lightestBlue,
        ),
      ),
      fillColor: buttonBlue,
      shape: CircleBorder(),
    );
  }
}
