import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class GameName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Final',
          style: TextStyle(
            fontSize: 58,
            color: Colors.white,
            fontFamily: appNameFont,
          ),
        ),
        Text(
          'Tic',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontFamily: ticFont,
          ),
        ),
      ],
    );
  }
}
