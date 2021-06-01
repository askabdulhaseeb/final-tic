import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/matchScreen/profile/circularProfilePic.dart';
import 'package:flutter/material.dart';

class OpponentSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // TODO: Fetch Oppnent Name
              'Opponent Name',
              style: TextStyle(
                color: Colors.white,
                fontFamily: regular,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              // TODO: Fetch Oppnent Game Username
              'Opponent User Name',
              style: TextStyle(
                color: Colors.white,
                fontFamily: regular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(width: 14),
        CircularProfilePic(
          image: profilePic,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
