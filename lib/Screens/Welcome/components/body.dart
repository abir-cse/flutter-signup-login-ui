
import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Login/login_screens.dart';
import 'package:flutter_signup_login/Screens/Signup/signup_screens.dart';
import 'package:flutter_signup_login/Screens/Wallet/wallet_screen.dart';
import 'package:flutter_signup_login/components/circle.dart';
import 'package:flutter_signup_login/components/get_value.dart';
import 'package:flutter_signup_login/components/mini_circle.dart';
import 'package:flutter_signup_login/components/rounded_button.dart';
import 'package:flutter_signup_login/components/outline_button.dart';

import 'package:flutter_signup_login/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getValue('status').then((value) {
      print("------status-------"+value);
      if (value == '1') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WalletScreen()),
        );
      }
    });
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleShape(
              textColor: myPrimaryColor,
              myText: "GO",
              color: Colors.white,
            ),
            Container (
              padding: EdgeInsets.only(left: 160),
              child: MiniCircle(
                color: Colors.white,
                circleRadius: 30,
              ),
            ),
            Container (
              padding: EdgeInsets.only(left: 80),
              child: MiniCircle(
                color: Colors.white,
                circleRadius: 15,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            RoundedButton(
              text: "LOGIN",
              press: () {
                print("Login tapped ");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            OutlineButton_ (
              text: "REGISTER",
              color: myPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
