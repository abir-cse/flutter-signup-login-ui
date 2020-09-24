

import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';

class CircleShape extends StatelessWidget {
  final String myText;
  final Color color, textColor;
  const CircleShape({
    Key key,
    this.myText,
    this.color = Colors.white,
    this.textColor = myPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width * 0.33,
          height: size.width * 0.33,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Text("GO",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 85,
          ),
        ),
      ],
    );
  }
}
