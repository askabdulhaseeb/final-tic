import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/blurryAlertDialog.dart';
import 'package:FinalTic/screens/matchScreen/matchScreen.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final double uGlod;
  final double fee;
  const PlayButton({@required this.uGlod, @required this.fee});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black38,
      onTap: () {
        if (uGlod >= fee) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(MatchScreen.routeName, (route) => false);
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return BlurryAlertDialog(
                  title: 'Error', content: 'Not Possible to continue');
            },
          );
        }
      },
      child: Container(
        height: 60,
        width: 220,
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: goldenShade,
          ),
          borderRadius: BorderRadius.circular(46),
          gradient: boxGradient,
        ),
        child: Center(
          child: Text(
            'Play',
            style: TextStyle(
              fontSize: 28,
              wordSpacing: 4,
              fontFamily: regular,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
