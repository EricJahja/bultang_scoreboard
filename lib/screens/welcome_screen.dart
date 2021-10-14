import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/screens/configuration_screen.dart';
import 'package:bultang_scoreboard/const/constants.dart';
import 'package:bultang_scoreboard/widgets/reusable_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BADMINTON SCOREBOARD TESTER',
                  style: mainTitleTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ReusableButton(
                  text: 'START',
                  onPressed: () {
                    Navigator.pushNamed(context, ConfigurationScreen.id);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
