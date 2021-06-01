import 'package:FinalTic/screens/homeScreen/hearder/left/popScreen/sides/showInfoContainer.dart';
import 'package:flutter/material.dart';

class CenterOfSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Level', text: '16'),
            ShowInfoContainer(title: 'Level', text: '16'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Total earning', text: '16'),
            ShowInfoContainer(title: 'Current earning', text: '16'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Player ID', text: '16'),
            ShowInfoContainer(title: 'League', text: '16'),
          ],
        ),
      ],
    );
  }
}
