import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/leagueScreen/leagueScreen.dart';
import 'package:flutter/material.dart';

class LeagueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      splashColor: Colors.blue,
      containedInkWell: true,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: LeagueScreen(),
            );
          },
        );
      },
      child: Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(46),
          gradient: boxGradient,
          boxShadow: [
            BoxShadow(
              color: Colors.white30.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'LEAGUE',
            style: TextStyle(
              color: Colors.white,
              fontFamily: regular,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
