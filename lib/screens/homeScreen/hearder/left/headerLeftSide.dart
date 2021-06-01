import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/popScreen/userDetailScreen.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HeaderLeftSide extends StatelessWidget {
  HeaderLeftSide({
    Key key,
  }) : super(key: key);

  final userData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: UserDetailScreen(),
                );
              },
            );
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            backgroundImage: (userData.read('isOnline') == true)
                ? AssetImage(profilePic)
                : AssetImage(defaultUser),
          ),
        ),
        SizedBox(width: 6),
        UserInfo(),
      ],
    );
  }
}
