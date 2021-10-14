import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/const/constants.dart';
import 'package:bultang_scoreboard/screens/configuration_screen.dart';
import 'package:bultang_scoreboard/widgets/reusable_button.dart';
import 'package:bultang_scoreboard/widgets/reusable_card.dart';
import 'package:bultang_scoreboard/class/game_data.dart';

late GameData gameData;

class WinnerScreen extends StatefulWidget {
  static const String id = 'winner_screen';

  @override
  _WinnerScreenState createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    gameData = ModalRoute.of(context)!.settings.arguments as GameData;

    //To check each match's point
    String playerOnePointMatchOne = gameData.playerOnePointMatchOne.toString();
    String playerOnePointMatchTwo = gameData.playerOnePointMatchTwo != null
        ? gameData.playerOnePointMatchTwo.toString()
        : '';
    String playerOnePointMatchThree = gameData.playerOnePointMatchThree != null
        ? gameData.playerOnePointMatchThree.toString()
        : '';
    String playerOnePointMatchFour = gameData.playerOnePointMatchFour != null
        ? gameData.playerOnePointMatchFour.toString()
        : '';
    String playerOnePointMatchFive = gameData.playerOnePointMatchFive != null
        ? gameData.playerOnePointMatchFive.toString()
        : '';
    String playerOnePointMatchSix = gameData.playerOnePointMatchSix != null
        ? gameData.playerOnePointMatchSix.toString()
        : '';
    String playerOnePointMatchSeven = gameData.playerOnePointMatchSeven != null
        ? gameData.playerOnePointMatchSeven.toString()
        : '';

    String playerTwoPointMatchOne = gameData.playerTwoPointMatchOne.toString();
    String playerTwoPointMatchTwo = gameData.playerTwoPointMatchTwo != null
        ? gameData.playerTwoPointMatchTwo.toString()
        : '';
    String playerTwoPointMatchThree = gameData.playerTwoPointMatchThree != null
        ? gameData.playerTwoPointMatchThree.toString()
        : '';
    String playerTwoPointMatchFour = gameData.playerTwoPointMatchFour != null
        ? gameData.playerTwoPointMatchFour.toString()
        : '';
    String playerTwoPointMatchFive = gameData.playerTwoPointMatchFive != null
        ? gameData.playerTwoPointMatchFive.toString()
        : '';
    String playerTwoPointMatchSix = gameData.playerTwoPointMatchSix != null
        ? gameData.playerTwoPointMatchSix.toString()
        : '';
    String playerTwoPointMatchSeven = gameData.playerTwoPointMatchSeven != null
        ? gameData.playerTwoPointMatchSeven.toString()
        : '';

    //WillPopScope here is used to override the back button
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ConfigurationScreen(),
          ),
        );
        return false;
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text('POINT',
                                          style: pointResultTextStyle),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(playerOnePointMatchOne,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchTwo,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchThree,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchFour,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchFive,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchSix,
                                          style: numberPointResultTextStyle),
                                      Text(playerOnePointMatchSeven,
                                          style: numberPointResultTextStyle),
                                    ],
                                  ),
                                  Text(
                                    '${gameData.playerOneMatchWin}',
                                    style: pointTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'WINNER',
                              style: winnerResultTextStyle.copyWith(
                                color: gameData.playerOneMatchWin >
                                    gameData.playerTwoMatchWin
                                    ? mainBlue
                                    : lightestBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    '${gameData.playerTwoMatchWin}',
                                    style: pointTextStyle,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('POINT',
                                          style: pointResultTextStyle),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(playerTwoPointMatchOne,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchTwo,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchThree,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchFour,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchFive,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchSix,
                                          style: numberPointResultTextStyle),
                                      Text(playerTwoPointMatchSeven,
                                          style: numberPointResultTextStyle),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'WINNER',
                              style: winnerResultTextStyle.copyWith(
                                color: gameData.playerOneMatchWin >
                                    gameData.playerTwoMatchWin
                                    ? lightestBlue
                                    : mainBlue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      '${gameData.playerOneName}',
                      style: nameResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  ReusableButton(
                    text: 'NEW GAME',
                    onPressed: () {
                      Navigator.pushNamed(context, ConfigurationScreen.id);
                    },
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: Text(
                      '${gameData.playerTwoName}',
                      style: nameResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
