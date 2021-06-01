import 'package:flutter/material.dart';

class TabelBoxContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double pageWidth = size.width;
    return Container(
      height: pageWidth / 4,
      width: pageWidth / 4,
      color: Colors.black38,
    );
  }
}
