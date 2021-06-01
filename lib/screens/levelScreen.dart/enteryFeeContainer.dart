import 'package:FinalTic/appInfo.dart';
import 'package:FinalTic/models/matchBloc.dart';
import 'package:FinalTic/providers/amount.dart';
import 'package:flutter/material.dart';

class EnteryFeeContainer extends StatefulWidget {
  @override
  _EnteryFeeContainerState createState() => _EnteryFeeContainerState();
}

class _EnteryFeeContainerState extends State<EnteryFeeContainer> {
  int _index = 0;
  bool _removeAble = false;
  bool _addAble = true;

  _available() {
    setState(() {
      if (_index == 0) {
        _removeAble = false;
      } else if (_index == 6) {
        _addAble = false;
      } else {
        _removeAble = true;
        _addAble = true;
      }
    });
    matchBloc.changeEnteryFee(getAmountInStringFormInt(_index));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 240,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black38,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // -ve Box
          InkWell(
            onTap: () {
              setState(
                () {
                  if (_index >= 1) {
                    _index -= 1;
                    _available();
                  }
                },
              );
            },
            child: UpdateFeeButton(
              icon: Icons.remove,
              available: _removeAble,
            ),
          ),
          // Amount
          Text(
            getAmountInStringFormInt(_index),
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: regular,
            ),
          ),
          // +ve Box
          InkWell(
            onTap: () {
              setState(
                () {
                  if (_index < 6) {
                    _index += 1;
                    _available();
                  }
                },
              );
            },
            child: UpdateFeeButton(
              icon: Icons.add,
              available: _addAble,
            ),
          ),
        ],
      ),
    );
  }
}

class UpdateFeeButton extends StatelessWidget {
  final IconData icon;
  final bool available;
  const UpdateFeeButton({
    @required this.icon,
    @required this.available,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        border: Border.all(
          color: goldenShade,
          width: 3,
        ),
        gradient: (available == true) ? boxGradient : null,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
