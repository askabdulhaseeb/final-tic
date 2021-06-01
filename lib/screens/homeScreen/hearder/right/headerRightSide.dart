import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/providers/amount.dart';
import 'package:FinalTic/screens/homeScreen/hearder/right/displayCard.dart';
import 'package:flutter/material.dart';

class HeaderRightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        StreamBuilder(
          stream: matchBloc.uGold,
          builder: (context, snapshot) {
            return DisplayCard(
              icon: coinIcon,
              amount: convertAmountInStringCodeFromAmount(
                (snapshot.hasData) ? snapshot.data : 1000,
              ),
            );
          },
        ),
        SizedBox(height: 6),
        StreamBuilder(
          stream: matchBloc.uGems,
          builder: (context, snapshot) {
            return DisplayCard(
              icon: gemIcon,
              amount: convertAmountInStringCodeFromAmount(
                (snapshot.hasData) ? snapshot.data : 1000,
              ),
            );
          },
        ),
        SizedBox(height: 10),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
              )),
          child: Image.asset(giftIcon),
        ),
      ],
    );
  }
}
