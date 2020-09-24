
import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Welcome/welcome_screens.dart';

import '../../../constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 60),
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned (
              top: 20,
              left: 20,
              child: IconButton(
                icon: Icon(Icons.close),
                color: myPrimaryColor,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()),);
              },
              ),
            ),
            child,
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft:Radius.circular(40) ,
              topRight: Radius.circular(40)
          ),
        ),
      ),
    );
  }
}