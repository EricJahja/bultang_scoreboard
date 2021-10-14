import 'package:flutter/material.dart';

///COLOR CONSTANTS
//WelcomeScreen Color
const mainBlue = Color(0xFF0047AB);
const buttonBlue = Color(0xFF1560BD);

//ConfigurationScreen Color
const lightestBlue = Color(0xFFE6F2FF);
const aBitBlue = Color(0xFFB3D9FF);
const grayishBlue = Color(0xFF5F84A2);
const darkestBlue = Color(0xFF002366);
const blueThumb = Color(0xFF1E90FF);

///SCREENS CONSTANTS
//WelcomeScreen
const mainTitleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

//ConfigurationScreen
const textFieldDecoration = InputDecoration(
  hintText: 'Enter name',
  hintStyle: TextStyle(color: Colors.white60, fontSize: 15.0),
  labelText: 'Player 1',
  labelStyle: TextStyle(
    color: lightestBlue,
    fontWeight: FontWeight.bold,
  ),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightestBlue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF99FFFF), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF99FFFF), width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
  errorStyle: TextStyle(color: Color(0xFF99FFFF)),
  counterStyle: TextStyle(color: lightestBlue),
);

//GameScreen
const textGameScreenColor = Color(0xFF0047AB);

const nameTextStyle = TextStyle(
  fontSize: 30.0,
  color: textGameScreenColor,
  fontWeight: FontWeight.bold,
);

const pointTextStyle = TextStyle(
  fontSize: 150.0,
  color: textGameScreenColor,
  fontWeight: FontWeight.bold,
);

//WinnerScreen
const pointResultTextStyle = TextStyle(
  color: mainBlue,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const numberPointResultTextStyle = TextStyle(
  color: mainBlue,
  fontSize: 15.0,
);

const nameResultTextStyle = TextStyle(
  color: lightestBlue,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const winnerResultTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);
