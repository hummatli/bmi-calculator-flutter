import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  IconContent({@required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
