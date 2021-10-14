import 'package:flutter/material.dart';

//This will be used as the DOT to indicate the service order
class CircleShape extends StatelessWidget {
  final Color color;
  CircleShape({required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Container(),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        height: 30.0,
        width: 30.0,
      ),
    );
  }
}
