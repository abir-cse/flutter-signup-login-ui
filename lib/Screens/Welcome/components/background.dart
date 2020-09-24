

import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: myPrimaryColor,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
        CustomPaint(
        painter: BackgroundPainter(),
            child: Container(
            height: double.infinity,
            width: double.infinity)
            ),
          child,
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path whitePath = Path();
    whitePath.moveTo(size.width, size.height * .7);
    whitePath.quadraticBezierTo(size.width * .9, size.height, 0, size.height );
    whitePath.lineTo(size.width, size.height );
    whitePath.close();
    paint.color = Colors.white;
    canvas.drawPath(whitePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

