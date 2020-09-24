import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';

class OutlineButton_ extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const OutlineButton_({
    Key key,
    this.text,
    this.press,
    this.color = myPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
