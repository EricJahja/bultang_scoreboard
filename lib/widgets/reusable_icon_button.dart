import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/const/constants.dart';

//Icon button that has no background (only icon)
class ReusableIconButton extends StatelessWidget {
  late final VoidCallback onPressed;
  final IconData icon;
  ReusableIconButton({this.icon = Icons.close, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        icon,
        color: lightestBlue,
      ),
      onTap: onPressed,
    );
  }
}
