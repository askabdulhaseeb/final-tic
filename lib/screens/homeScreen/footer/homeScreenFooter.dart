import 'package:FinalTic/screens/homeScreen/footer/friendsButton.dart';
import 'package:FinalTic/screens/homeScreen/footer/hourlyChest.dart';
import 'package:FinalTic/screens/homeScreen/footer/leagueButton.dart';
import 'package:FinalTic/screens/homeScreen/footer/mainChest.dart';
import 'package:flutter/material.dart';

class HomeScreenFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FriendsButton(),
              SizedBox(width: 6),
              HourlyChest(),
            ],
          ),
          Container(
            child: LeagueButton(),
          ),
          MainChest(),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
