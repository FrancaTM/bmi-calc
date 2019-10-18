import 'package:flutter/material.dart';

import 'package:bmi_calc/constants.dart';

class CardIconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  CardIconContent({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
