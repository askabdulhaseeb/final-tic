import 'package:FinalTic/screens/homeScreen/center/GameButton.dart';
import 'package:FinalTic/screens/homeScreen/center/gameName.dart';
import 'package:flutter/material.dart';

class HomeScreenCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GameName(),
          GameButton(),
        ],
      ),
    );
  }
}
