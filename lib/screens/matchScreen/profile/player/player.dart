import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/screens/matchScreen/profile/circularProfilePic.dart';
import 'package:flutter/material.dart';

class PlayerSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        CircularProfilePic(image: profilePic),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: matchBloc.name,
              builder: (context, snapshot) {
                return PlayerNameText(
                  text: (snapshot.hasData) ? snapshot.data : 'Not Found',
                );
              },
            ),
            StreamBuilder(
              stream: matchBloc.username,
              builder: (context, snapshot) {
                return PlayerNameText(
                  text: (snapshot.hasData) ? snapshot.data : 'Not Found',
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

class PlayerNameText extends StatelessWidget {
  final String text;
  const PlayerNameText({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // TODO: Fetch Player Name
      text,
      style: TextStyle(
        color: Colors.white,
        fontFamily: regular,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
