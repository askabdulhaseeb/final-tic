import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/providers/amount.dart';
import 'package:FinalTic/providers/gameTypes.dart';
import 'package:FinalTic/screens/levelScreen.dart/levelScreen.dart';
import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        matchBloc.changeEnteryFee(getAmountInStringFormInt(500));
        matchBloc.changeMatchType(getGameTypeInStringFromint(0));
        Navigator.of(context).pushNamed(LevelScreen.routeName);
      },
      child: Container(
        height: 200,
        width: 200,
        child: Image.asset(gameButton),
      ),
    );
  }
}
