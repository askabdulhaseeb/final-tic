import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class UserInfo extends StatelessWidget {
  final userData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StreamBuilder(
          stream: matchBloc.name,
          builder: (context, snapshot) {
            return UserTextInfo(
              text: (snapshot.hasData) ? snapshot.data : 'Not Found',
            );
          },
        ),
        StreamBuilder(
          stream: matchBloc.uid,
          builder: (context, snapshot) {
            return UserTextInfo(
              text: (snapshot.hasData) ? snapshot.data : 'Not Found',
            );
          },
        ),
        Row(
          children: [
            Text(
              '7/200',
              // TODO: Fetch scoure
              style: nameTextStyle,
            ),
            SizedBox(width: 4),
            Container(
              height: 16,
              width: 16,
              child: Image.asset(starIcon),
            ),
          ],
        ),
      ],
    );
  }
}

class UserTextInfo extends StatelessWidget {
  final String text;
  const UserTextInfo({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // TODO: Fetch scoure
      style: nameTextStyle,
    );
  }
}
