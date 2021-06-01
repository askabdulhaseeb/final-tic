import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/models/user.dart';
import 'package:FinalTic/screens/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GuestButton extends StatelessWidget {
  GuestButton({
    Key key,
  }) : super(key: key);
  final userData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // TODO: Gest
        userData.write('isLogin', false);
        userData.write('username', 'Guest');
        userData.write('isOnlice', false);

        matchBloc.changeUsername('guest');
        matchBloc.changeUid('guest');
        matchBloc.changeName('Guest');
        matchBloc.changeUGold(13508);
        matchBloc.changeUGems(590);

        // playerDetial.setUsername('guest');
        // playerDetial.setUID('guest_id');
        // playerDetial.setName('Guest Name');

        // playerDetial.setTotalEarning(123456);
        // playerDetial.setCurrentEarning(1234);

        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFD2D2D2),
                Color(0xFF9E9E9F),
              ],
            ),
          ),
          child: Text(' Login as Guest'),
        ),
      ),
    );
  }
}
