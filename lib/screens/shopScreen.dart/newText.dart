import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  final String text;
  const NewText({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: appNameFont,
          fontSize: 34,
          color: Colors.white,
          letterSpacing: 3,
        ),
      ),
    );
  }
}
