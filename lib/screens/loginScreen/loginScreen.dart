import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/loginScreen/guestButton.dart';
import 'package:flutter/material.dart';
import './facebookButton.dart';

class LoginScreen extends StatelessWidget {
  static final routeName = '/loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: appBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FacebookButton(),
            SizedBox(height: 20),
            GuestButton(),
          ],
        ),
      ),
    );
  }
}
