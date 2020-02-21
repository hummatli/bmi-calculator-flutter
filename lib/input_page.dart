import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const color_card_view = Color(0xFF201F33);
const color_bottom_container = Color(0xFFE22A60);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  MyCardView(
                    color: color_card_view,
                    child: MyIconView(
                      iconData: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                  MyCardView(
                    color: color_card_view,
                    child: MyIconView(
                        title: 'FEMALE', iconData: FontAwesomeIcons.venus),
                  ),
                ],
              ),
            ),
            MyCardView(
              color: color_card_view,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  MyCardView(
                    color: color_card_view,
                  ),
                  MyCardView(
                    color: color_card_view,
                  ),
                ],
              ),
            ),
            Container(
              color: color_bottom_container,
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

class MyIconView extends StatelessWidget {
  final IconData iconData;
  final String title;

  MyIconView({@required this.title, @required this.iconData});

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
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}

class MyCardView extends StatelessWidget {
  final Color color;
  final Widget child;

  MyCardView({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
