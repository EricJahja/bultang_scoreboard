//Game data will be passed as this object
class GameData {
  final int playerOneMatchWin;
  final int playerTwoMatchWin;
  final String playerOneName;
  final String playerTwoName;
  final int playerOnePointMatchOne;
  final int? playerOnePointMatchTwo;
  final int? playerOnePointMatchThree;
  final int? playerOnePointMatchFour;
  final int? playerOnePointMatchFive;
  final int? playerOnePointMatchSix;
  final int? playerOnePointMatchSeven;
  final int playerTwoPointMatchOne;
  final int? playerTwoPointMatchTwo;
  final int? playerTwoPointMatchThree;
  final int? playerTwoPointMatchFour;
  final int? playerTwoPointMatchFive;
  final int? playerTwoPointMatchSix;
  final int? playerTwoPointMatchSeven;

  GameData({
    required this.playerOneMatchWin,
    required this.playerTwoMatchWin,
    required this.playerOneName,
    required this.playerTwoName,
    required this.playerOnePointMatchOne,
    this.playerOnePointMatchTwo,
    this.playerOnePointMatchThree,
    this.playerOnePointMatchFour,
    this.playerOnePointMatchFive,
    this.playerOnePointMatchSix,
    this.playerOnePointMatchSeven,
    required this.playerTwoPointMatchOne,
    this.playerTwoPointMatchTwo,
    this.playerTwoPointMatchThree,
    this.playerTwoPointMatchFour,
    this.playerTwoPointMatchFive,
    this.playerTwoPointMatchSix,
    this.playerTwoPointMatchSeven,
  });
}
