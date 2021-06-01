import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/shopScreen.dart/newText.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  static final routeName = '/ShopScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlueColor,
        title: Text(
          'Shop',
          style: TextStyle(
            fontFamily: appNameFont,
            letterSpacing: 1,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appBackground,
        ),
        child: Center(child: NewText(text: 'Coming Soon ...')),
      ),
    );
  }
}
