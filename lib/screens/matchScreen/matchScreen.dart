import 'dart:ui';

import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/screens/homeScreen/homeScreen.dart';
import 'package:FinalTic/screens/matchScreen/matchScreenAppBar.dart';
import 'package:FinalTic/screens/matchScreen/profile/opponent/opponent.dart';
import 'package:FinalTic/screens/matchScreen/profile/player/player.dart';
import 'package:FinalTic/screens/matchScreen/tabel/tabel.dart';
import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  static final routeName = 'TabelScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: appBackground,
          ),
          child: Column(
            children: [
              Expanded(
                child: MatchScreenAppBar(),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: OpponentSide(),
              ),
              Expanded(
                flex: 4,
                child: Tabel(),
              ),
              Expanded(
                flex: 1,
                child: PlayerSide(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
