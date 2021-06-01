import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class GameTypeContainer extends StatelessWidget {
  final String type;
  final bool isSelected;
  const GameTypeContainer({@required this.type, @required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        // color: Colors.black26,
        gradient: boxGradient,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        border: (isSelected == true)
            ? Border.all(
                color: Colors.white,
                width: 5,
              )
            : null,
      ),
      child: Text(
        type,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: regular,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
