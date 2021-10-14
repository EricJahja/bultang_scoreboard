import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/screens/game_screen.dart';
import 'package:bultang_scoreboard/const/constants.dart';
import 'package:bultang_scoreboard/widgets/reusable_button.dart';
import 'package:bultang_scoreboard/widgets/reusable_switch.dart';
import 'package:bultang_scoreboard/widgets/reusable_icon_button.dart';
import 'package:bultang_scoreboard/class/config_data.dart';

class ConfigurationScreen extends StatefulWidget {
  static const String id = 'configuration_screen';

  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  final _formKey = GlobalKey<FormState>(); //Key to access form

  String playerOneName = 'Defender';
  String playerTwoName = 'Challenger';
  bool playerOneStartsFirst = true;
  bool playerTwoStartsFirst = false;
  int totalMatch = 1;

  final TextEditingController _textControllerOne =
  TextEditingController(text: 'Defender');
  final TextEditingController _textControllerTwo =
  TextEditingController(text: 'Challenger');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: <Widget>[
                Text(
                  'CONFIGURATION',
                  style: mainTitleTextStyle,
                ),
                Row(
                  children: <Widget>[
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Best of',
                              style: TextStyle(color: lightestBlue),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: lightestBlue,
                                inactiveTrackColor: aBitBlue,
                                thumbColor: blueThumb,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0),
                                inactiveTickMarkColor: darkestBlue,
                                overlayColor: Color(0x2999CCFF),
                                valueIndicatorShape:
                                PaddleSliderValueIndicatorShape(),
                                valueIndicatorColor: lightestBlue,
                                valueIndicatorTextStyle: TextStyle(
                                    color: darkestBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              child: Slider(
                                value: totalMatch.toDouble(),
                                min: 1,
                                max: 4,
                                divisions: 3,
                                label: totalMatch.toString(),
                                onChanged: (value) {
                                  setState(
                                        () {
                                      totalMatch = value.toInt();
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('1',
                                  style: TextStyle(
                                    color: lightestBlue,
                                    fontSize: 10.0,
                                  )),
                              Text('2',
                                  style: TextStyle(
                                    color: lightestBlue,
                                    fontSize: 10.0,
                                  )),
                              Text('3',
                                  style: TextStyle(
                                    color: lightestBlue,
                                    fontSize: 10.0,
                                  )),
                              Text('4',
                                  style: TextStyle(
                                    color: lightestBlue,
                                    fontSize: 10.0,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Flexible(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(color: lightestBlue),
                              onChanged: (value) {
                                setState(() {
                                  playerOneName = value;
                                });
                              },
                              controller: _textControllerOne,
                              decoration: textFieldDecoration.copyWith(
                                //Button X to clear TextField
                                suffixIcon: ReusableIconButton(
                                  onPressed: () {
                                    setState(
                                          () {
                                        _textControllerOne.clear();
                                      },
                                    );
                                  },
                                ),
                              ),
                              cursorColor: lightestBlue,
                              maxLength: 10,
                              validator: (value) => value!.isEmpty
                                  ? 'The name cannot be empty'
                                  : null,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            TextFormField(
                              style: TextStyle(color: lightestBlue),
                              onChanged: (value) {
                                setState(() {
                                  playerTwoName = value;
                                });
                              },
                              controller: _textControllerTwo,
                              decoration: textFieldDecoration.copyWith(
                                labelText: 'Player 2',
                                suffixIcon: ReusableIconButton(
                                  onPressed: () {
                                    setState(
                                          () {
                                        _textControllerTwo.clear();
                                      },
                                    );
                                  },
                                ),
                              ),
                              cursorColor: lightestBlue,
                              maxLength: 10, //Max name's character is 10
                              validator: (value) => value!
                                  .isEmpty //To check if the TextField is empty
                                  ? 'The name cannot be empty' //Return this if empty
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 40.0),
                    Column(
                      children: <Widget>[
                        //Switch to choose which player get the first service
                        ReusableSwitch(
                          value: playerOneStartsFirst,
                          onChanged: (value) {
                            setState(() {
                              playerOneStartsFirst = value;
                              playerTwoStartsFirst =
                              playerOneStartsFirst == true ? false : true;
                            });
                          },
                        ),
                        Text(
                          playerOneStartsFirst ? 'Service' : '',
                          style: TextStyle(color: lightestBlue),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableSwitch(
                          value: playerTwoStartsFirst,
                          onChanged: (value) {
                            setState(() {
                              playerTwoStartsFirst = value;
                              playerOneStartsFirst =
                              playerTwoStartsFirst == true ? false : true;
                            });
                          },
                        ),
                        Text(
                          playerOneStartsFirst ? '' : 'Service',
                          style: TextStyle(color: lightestBlue),
                        ),
                        SizedBox(height: 15.0),
                      ],
                    )
                  ],
                ),
                ReusableButton(
                  text: 'START GAME',
                  onPressed: () {
                    //Will check the validator for every TextField
                    final isValid = _formKey.currentState!.validate();

                    //If valid, navigate to the next screen and pass configData object as arguments
                    if (isValid) {
                      _formKey.currentState!.save();
                      ConfigData configData = ConfigData(
                          playerOneName: playerOneName,
                          playerTwoName: playerTwoName,
                          playerOneStartsFirst: playerOneStartsFirst,
                          totalMatch: totalMatch);

                      Navigator.pushNamed(
                        context,
                        GameScreen.id,
                        arguments: configData,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
