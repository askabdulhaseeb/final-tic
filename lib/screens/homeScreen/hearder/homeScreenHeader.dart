import 'package:FinalTic/screens/homeScreen/hearder/left/headerLeftSide.dart';
import 'package:FinalTic/screens/homeScreen/hearder/right/headerRightSide.dart';
import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLeftSide(),
          HeaderRightSide(),
        ],
      ),
    );
  }
}
