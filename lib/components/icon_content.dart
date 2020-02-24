import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconContent({@required this.title, @required this.iconData});

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
          title,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
