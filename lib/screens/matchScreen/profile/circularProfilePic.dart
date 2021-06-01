import 'package:flutter/material.dart';

class CircularProfilePic extends StatelessWidget {
  final String image;
  const CircularProfilePic({@required this.image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Show User About
      },
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
