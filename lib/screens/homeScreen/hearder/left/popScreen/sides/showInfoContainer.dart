import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class ShowInfoContainer extends StatelessWidget {
  final String title;
  final String text;
  const ShowInfoContainer({@required this.title, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white70,
            fontFamily: regular,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Container(
          height: 24,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: regular,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
