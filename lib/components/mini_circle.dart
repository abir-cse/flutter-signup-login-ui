
import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';

class MiniCircle extends StatelessWidget {
  final Color color;
  final double circleRadius;
  final double positionX, positionY;

  const MiniCircle({
    Key key,
    this.color = Colors.white,
    this.circleRadius ,
    this.positionX,
    this.positionY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: circleRadius * 2,
      height: circleRadius * 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
