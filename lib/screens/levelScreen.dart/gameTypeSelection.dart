import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/providers/gameTypes.dart';
import 'package:FinalTic/screens/levelScreen.dart/gameTypeContainer.dart';
import 'package:flutter/material.dart';

class GameTypeSelection extends StatefulWidget {
  @override
  _GameTypeSelectionState createState() => _GameTypeSelectionState();
}

class _GameTypeSelectionState extends State<GameTypeSelection> {
  bool _isBO5 = true;
  bool _isBO3 = false;
  bool _isBO1 = false;

  @override
  Widget build(BuildContext context) {
    _gameType() {
      setState(() {
        if (_isBO5) {
          matchBloc
              .changeMatchType(getGameTypeInStringFromEnum(GameTypeEnum.bo5));
        } else if (_isBO3) {
          matchBloc
              .changeMatchType(getGameTypeInStringFromEnum(GameTypeEnum.bo3));
        } else {
          matchBloc
              .changeMatchType(getGameTypeInStringFromEnum(GameTypeEnum.bo1));
        }
      });
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isBO5 = true;
                  _isBO3 = false;
                  _isBO1 = false;
                  _gameType();
                });
              },
              child: GameTypeContainer(
                type: 'Best of 5',
                isSelected: _isBO5,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isBO5 = false;
                  _isBO3 = true;
                  _isBO1 = false;
                  _gameType();
                });
              },
              child: GameTypeContainer(
                type: 'Best of 3',
                isSelected: _isBO3,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isBO5 = false;
              _isBO3 = false;
              _isBO1 = true;
              _gameType();
            });
          },
          child: GameTypeContainer(
            type: '1 vs 1',
            isSelected: _isBO1,
          ),
        ),
      ],
    );
  }
}
