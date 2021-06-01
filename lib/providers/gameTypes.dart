import 'package:flutter/material.dart';

enum GameTypeEnum {
  bo5, // Best of 5
  bo3, // Best of 3
  bo1, // Best of 1
}

String getGameTypeInStringFromEnum(GameTypeEnum gameTypeEnum) {
  if (GameTypeEnum.bo5 == gameTypeEnum)
    return 'Best Of 5';
  else if (GameTypeEnum.bo3 == gameTypeEnum)
    return 'Best of 3';
  else
    return '1 vs 1';
}

String getGameTypeInStringFromint(int value) {
  if (value == 0)
    return 'Best Of 5';
  else if (value == 1)
    return 'Best of 3';
  else
    return '1 vs 1';
}

class StartMatch {
  GameTypeEnum type;
  int amount;

  StartMatch({
    @required this.type,
    @required this.amount,
  });
}
