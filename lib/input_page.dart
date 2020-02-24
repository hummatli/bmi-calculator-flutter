import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconContent(
                      color: selectedGender == Gender.MALE
                          ? activeCardColor
                          : inactiveCardColor,
                      child: ReusableCard(
                        iconData: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconContent(
                      color: selectedGender == Gender.FEMALE
                          ? activeCardColor
                          : inactiveCardColor,
                      child: ReusableCard(
                        title: 'FEMALE',
                        iconData: FontAwesomeIcons.venus,
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.FEMALE;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IconContent(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconContent(
                      color: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: IconContent(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
