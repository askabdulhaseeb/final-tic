import 'package:flutter/material.dart';
import 'showInfoContainer.dart';

class LowerSideOfSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Games Won', text: '16'),
            ShowInfoContainer(title: 'Win Rate', text: '16'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Best of 5', text: '16'),
            ShowInfoContainer(title: 'Win Rate', text: '16'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: 'Best of 3', text: '16'),
            ShowInfoContainer(title: 'Win Rate', text: '16'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowInfoContainer(title: '1 vs 1', text: '16'),
            ShowInfoContainer(title: 'Win Rate', text: '16'),
          ],
        ),
      ],
    );
  }
}
