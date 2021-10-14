import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bultang_scoreboard/const/constants.dart';
import 'reusable_circle_button.dart';

//This one-button dialog box will pop-up to alert the user
class ReusableOneButtonDialogBox extends StatefulWidget {
  final String title;
  final String description;
  final VoidCallback onTapCheck;

  const ReusableOneButtonDialogBox({
    required this.title,
    required this.description,
    required this.onTapCheck,
  });
  @override
  _ReusableOneButtonDialogBoxState createState() =>
      _ReusableOneButtonDialogBoxState();
}

class _ReusableOneButtonDialogBoxState
    extends State<ReusableOneButtonDialogBox> {
  @override
  Widget build(BuildContext context) {
    //This will disable the back button
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: lightestBlue,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  color: mainBlue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                widget.description,
                style: TextStyle(
                  color: mainBlue,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ReusableCircleButton(
                icon: Icons.check,
                onPressed: widget.onTapCheck,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
