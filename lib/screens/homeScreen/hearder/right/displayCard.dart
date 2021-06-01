import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/screens/shopScreen.dart/shopScreen.dart';
import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String icon;
  final String amount;

  const DisplayCard({
    @required this.icon,
    @required this.amount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 44,
            width: 44,
            child: Image.asset(icon),
          ),
          Text(
            '$amount',
            style: numbersTextStyle,
            // TODO: Display in K,M and etc
          ),
          Container(
            width: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    goldenShade,
                    goldenShade,
                    goldenShade,
                    Colors.white70,
                    goldenShade,
                    goldenShade,
                    goldenShade,
                    Colors.white70,
                    goldenShade,
                  ],
                )),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                size: 24,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(ShopScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
