import 'package:flutter/material.dart';

class FriendsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {
            //TODO: Open FB Friends
          }),
    );
  }
}
