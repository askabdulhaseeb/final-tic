import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/providers/amount.dart';
import 'package:FinalTic/screens/levelScreen.dart/enteryFeeContainer.dart';
import 'package:FinalTic/screens/levelScreen.dart/gameTypeSelection.dart';
import 'package:FinalTic/screens/levelScreen.dart/playButton.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  static final routeName = '/levelScreen';
  double _gold;
  String _fee;

  @override
  Widget build(BuildContext context) {
    print('lvl Screen Gold: $_gold');
    print('lvl Screen Fee: $_fee');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlueColor,
        elevation: 0,
        title: Text(
          'Final Tic',
          style: TextStyle(
            fontSize: 26,
            fontFamily: appNameFont,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            UserAmountContainer(),
            SizedBox(height: 10),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38.withOpacity(0.8),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(appIcon),
            ),
            SizedBox(height: 20),
            SolidTextStyle(text: 'SELECT  TYPE'),
            GameTypeSelection(),
            SizedBox(height: 20),
            SolidTextStyle(text: 'ENTERY FEE'),
            EnteryFeeContainer(),
            SizedBox(height: 20),
            PlayButton(uGlod: 1300, fee: 500),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class UserAmountContainer extends StatelessWidget {
  UserAmountContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: matchBloc.uGold,
      builder: (context, snapshot) {
        return Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              border: Border.all(
                color: goldenShade,
                width: 3,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                convertAmountInStringCodeFromAmount(
                  (snapshot.hasData) ? snapshot.data : 1000,
                ),
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: regular,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(coinIcon),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SolidTextStyle extends StatelessWidget {
  final String text;
  const SolidTextStyle({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // color: Colors.black87,
        color: Colors.white60,
        fontFamily: regular,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
