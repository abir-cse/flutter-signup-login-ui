

import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Login/login_screens.dart';
import 'package:flutter_signup_login/Screens/Signup/components/background.dart';
import 'package:flutter_signup_login/components/circle.dart';
import 'package:flutter_signup_login/components/rounded_button.dart';
import 'package:flutter_signup_login/components/rounded_input_field.dart';
import 'package:flutter_signup_login/components/rounded_password_field.dart';
import 'package:flutter_signup_login/components/save_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String emailText, passwordText;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleShape(
                textColor: Colors.white,
                myText: "REGI\ "+" STER",
                color: myPrimaryColor,
                myFontSize: 42,
              ),
              SizedBox(height: size.height * 0.08),
              RoundedInputField(
                textInputType: TextInputType.name,
                hintText: "DISPLAY NAME",
                icon: Icons.account_circle,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Your Email",
                textInputType: TextInputType.emailAddress,
                onChanged: (value) {
                  emailText = value;
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  passwordText = value;
                },
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "CREATE ACCOUNT",
                color: myPrimaryColor,
                textColor: Colors.white,
                press: () {
                  if (emailText.contains('@')) {
                    saveValue('email', emailText);
                    saveValue('password', passwordText).then((value) {
                      if (value == 'success') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }
                    });
                  } else {
                    print('Incorect Email Format');
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
