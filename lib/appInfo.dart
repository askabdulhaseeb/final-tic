import 'package:flutter/material.dart';

// Colors
Color oringeShade = const Color(0xFFF48715);
Color pinkShade = const Color(0xFFF54E64);
Color goldenShade = const Color(0xFFEEC72E);
Color buttonColor = const Color(0xFFF2F2F2);
Color darkBlueColor = const Color(0xFF0E1D2D);
Color lightBlueColor = const Color(0xFF1E5377);

Gradient boxGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [oringeShade, pinkShade],
);

Gradient appBackground = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [darkBlueColor, lightBlueColor],
);

String regular = 'RedHatDisplay';
String appNameFont = 'Satisfy';
String ticFont = 'Pacifico';

String appIcon = 'assets/icons/TicTacToe.jpg';
String gameButton = 'assets/icons/GameButton.png';
String defaultUser = 'assets/icons/defaultUser.png';
String giftIcon = 'assets/icons/gift.gif';
String gemIcon = 'assets/icons/gem.png';
String gemBoxIcon = 'assets/icons/gemBox.png';
String coinIcon = 'assets/icons/coin.png';
String starIcon = 'assets/icons/star.png';
String facebookLogo = 'assets/images/facebook.png';
String profilePic = 'assets/images/profilePic.jpg';

TextStyle nameTextStyle = TextStyle(
  color: buttonColor,
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontFamily: regular,
);

TextStyle numbersTextStyle = TextStyle(
  color: buttonColor,
  fontSize: 14,
  fontFamily: regular,
  fontWeight: FontWeight.bold,
);
