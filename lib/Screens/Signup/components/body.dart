
import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Login/login_screens.dart';
import 'package:flutter_signup_login/Screens/Signup/components/background.dart';
import 'package:flutter_signup_login/components/circle.dart';
import 'package:flutter_signup_login/components/rounded_button.dart';
import 'package:flutter_signup_login/components/rounded_input_field.dart';
import 'package:flutter_signup_login/components/rounded_password_field.dart';
import 'package:flutter_signup_login/components/save_value.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String myName,emailText, passwordText;
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
                onChanged: (value) {
                  myName = value;
                  },
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
                  if (myName != null) {
                    if (emailText.contains('@')) {
                      if (passwordText.length >= 6 ) {
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
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text('Password must be six characters !'),
                          backgroundColor: Colors.red,
                        ));
                      }
                    } else {
                      print('Incorect Email Format');
                      Scaffold.of(context).showSnackBar(new SnackBar(
                        content: new Text('Incorrect Email !'),
                        backgroundColor: Colors.red,
                      ));
                    }
                  } else {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(
                      content: new Text('Name can not be empty !'),
                          backgroundColor: Colors.red,
                    ));
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
