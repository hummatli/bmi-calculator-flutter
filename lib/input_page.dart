import 'package:flutter/material.dart';

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
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  MyCardView(
                    color: Color(0xFF201F33),
                  ),
                  MyCardView(
                    color: Color(0xFF201F33),
                  ),
                ],
              ),
            ),
            MyCardView(
              color: Color(0xFF201F33),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  MyCardView(
                    color: Color(0xFF201F33),
                  ),
                  MyCardView(
                    color: Color(0xFF201F33),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCardView extends StatelessWidget {
  final Color color;

  MyCardView({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
