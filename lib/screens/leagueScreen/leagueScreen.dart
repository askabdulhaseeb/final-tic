import 'dart:ui';

import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class LeagueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: appBackground,
          border: Border.all(
            color: goldenShade,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Coming Soon ...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: appNameFont,
            ),
          ),
        ),
      ),
    );
  }
}
