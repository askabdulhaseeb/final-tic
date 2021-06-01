import 'dart:ui';
import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class BlurryAlertDialog extends StatelessWidget {
  final String title;
  final String content;

  BlurryAlertDialog({
    @required this.title,
    @required this.content,
  });
  TextStyle textStyle = TextStyle(color: Colors.white, fontFamily: regular);
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          backgroundColor: darkBlueColor,
          title: Center(
            child: new Text(
              title,
              style: textStyle,
            ),
          ),
          content: new Text(
            content,
            style: textStyle,
          ),
          actions: <Widget>[
            new FlatButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}
