import 'package:FinalTic/screens/matchScreen/tabel/TabelboxContainer.dart';
import 'package:flutter/material.dart';

class Tabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white12,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabelBoxContainer(),
              TabelBoxContainer(),
              TabelBoxContainer(),
            ],
          ),
          // 2nd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabelBoxContainer(),
              TabelBoxContainer(),
              TabelBoxContainer(),
            ],
          ),

          // 3rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabelBoxContainer(),
              TabelBoxContainer(),
              TabelBoxContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
