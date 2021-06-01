import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/userInfo.dart';
import 'package:flutter/material.dart';

class UpperSideOfSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(profilePic),
        ),
        SizedBox(width: 10),
        UserInfo(),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: Colors.redAccent,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
