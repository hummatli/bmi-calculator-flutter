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
                  MyContainer(),
                  MyContainer(),
                ],
              ),
            ),
            MyContainer(),
            Expanded(
              child: Row(
                children: <Widget>[
                  MyContainer(),
                  MyContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final EdgeInsetsGeometry margin;

  MyContainer({this.margin = const EdgeInsets.all(10.0)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: Color(0xFF201F33),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
