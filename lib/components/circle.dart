

import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';

class CircleShape extends StatelessWidget {
  final String myText ;
  final Color color, textColor;
  final double myFontSize;
  const CircleShape({
    Key key,
    this.myText,
    this.myFontSize = 80,
    this.color = Colors.white,
    this.textColor = myPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.33,
          height: size.width * 0.33,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Text.rich(
            TextSpan(
              text: myText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: myFontSize,
              ),// default text style
            ),
          ),
        ),

      ],
    );
  }
}
