import 'package:flutter/material.dart';
import 'package:bultang_scoreboard/screens/configuration_screen.dart';
import 'package:bultang_scoreboard/screens/welcome_screen.dart';
import 'package:bultang_scoreboard/screens/winner_screen.dart';
import 'package:bultang_scoreboard/screens/game_screen.dart';
import 'package:flutter/services.dart';
import 'package:bultang_scoreboard/const/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Screen will stay landscape
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  //Status bar (battery, signal, etc) will be hidden
  await SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'Badminton Scoreboard';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mainBlue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ConfigurationScreen.id: (context) => ConfigurationScreen(),
        GameScreen.id: (context) => GameScreen(),
        WinnerScreen.id: (context) => WinnerScreen(),
      },
    );
  }
}
