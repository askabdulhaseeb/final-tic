import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/homeScreen/center/homeScreenCenter.dart';
import 'package:FinalTic/screens/homeScreen/footer/homeScreenFooter.dart';
import 'package:FinalTic/screens/homeScreen/hearder/homeScreenHeader.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 6),
        decoration: BoxDecoration(
          gradient: appBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: HomeScreenHeader(),
            ),
            Expanded(
              flex: 8,
              child: HomeScreenCenter(),
            ),
            Expanded(
              flex: 1,
              child: HomeScreenFooter(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        mini: true,
      ),
    );
  }
}
