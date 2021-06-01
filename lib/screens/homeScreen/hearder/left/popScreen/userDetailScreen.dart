import 'dart:ui';

import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/popScreen/sides/centerOfSheet.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/popScreen/sides/lowerSideOfSheet.dart';
import 'package:FinalTic/screens/homeScreen/hearder/left/popScreen/sides/upperSideOfSheet.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Fetch All user detail from Database
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: appBackground,
          border: Border.all(
            color: goldenShade,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            UpperSideOfSheet(),
            Divider(
              color: Colors.white,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CenterOfSheet(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        height: 0.8,
                        width: MediaQuery.of(context).size.width / 6,
                        child: Text('-'),
                      ),
                      Container(
                        height: 26,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          border: Border.all(
                            color: Colors.white,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'STATS',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 0.8,
                        width: MediaQuery.of(context).size.width / 6,
                        child: Text('-'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  LowerSideOfSheet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
