import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:flutter/material.dart';
import '../homeScreen/homeScreen.dart';

class MatchScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              // TODO: Game End
              // TODO: Game Loss
              Navigator.of(context).pushNamedAndRemoveUntil(
                  HomeScreen.routeName, (route) => false);
            },
          ),
          StreamBuilder(
            stream: matchBloc.matchType,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: regular,
                    fontWeight: FontWeight.w600,
                  ),
                );
              } else {
                return CircularProgressIndicator(
                  strokeWidth: 1,
                );
              }
            },
          ),
          IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
