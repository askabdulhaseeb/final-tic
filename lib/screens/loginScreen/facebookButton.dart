import 'package:flutter/material.dart';
import 'package:FinalTic/appInfo.dart';
import 'package:get_storage/get_storage.dart';

class FacebookButton extends StatelessWidget {
  FacebookButton({
    Key key,
  }) : super(key: key);

  final userdata = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: facebook Login
      },
      child: Center(
        child: Container(
          width: 240,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF324F90),
                Color(0xFF22397A),
              ],
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Image.asset(facebookLogo),
                ),
                Text(
                  ' Login with Facebook',
                  style: TextStyle(color: buttonColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
