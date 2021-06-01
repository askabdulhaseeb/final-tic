import 'package:FinalTic/appInfo.dart';
import 'package:flutter/material.dart';

class MainChest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Open Main Chest Page
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Image.asset(giftIcon),
      ),
    );
  }
}
