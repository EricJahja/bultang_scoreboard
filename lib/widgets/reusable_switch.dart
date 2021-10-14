import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/const/constants.dart';

//Switch toggle button that only accept TRUE/FALSE
class ReusableSwitch extends StatefulWidget {
  late final bool value;
  late final Function(bool) onChanged;

  ReusableSwitch({
    required this.value,
    required this.onChanged,
  });

  @override
  _ReusableSwitchState createState() => _ReusableSwitchState();
}

class _ReusableSwitchState extends State<ReusableSwitch> {
  @override
  Widget build(BuildContext context) {
    //Switch.adaptive will adapt its design to user's phone (ios/android)
    return Switch.adaptive(
      value: widget.value,
      onChanged: widget.onChanged,
      activeTrackColor: aBitBlue,
      inactiveTrackColor: darkestBlue,
      activeColor: blueThumb,
      inactiveThumbColor: lightestBlue,
    );
  }
}
