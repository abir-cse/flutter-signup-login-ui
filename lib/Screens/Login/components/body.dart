import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Login/components/background.dart';
import 'package:flutter_signup_login/Screens/Wallet/wallet_screen.dart';
import 'package:flutter_signup_login/components/circle.dart';
import 'package:flutter_signup_login/components/get_value.dart';
import 'package:flutter_signup_login/components/rounded_button.dart';
import 'package:flutter_signup_login/components/rounded_input_field.dart';
import 'package:flutter_signup_login/components/rounded_password_field.dart';
import 'package:flutter_signup_login/components/save_value.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String emailText, passwordText;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleShape(
              textColor: Colors.white,
              myText: "LOGIN",
              color: myPrimaryColor,
              myFontSize: 40,
            ),
            SizedBox(height: size.height * 0.08),
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
              text: "LOGIN",
              color: myPrimaryColor,
              textColor: Colors.white,
              press: () {
                print('7. login pressed-----------------');
                getValue('email').then((value) {
                  if (value == emailText) {
                    getValue('password').then((value2) {
                      if (value2 == passwordText) {
                        print('Login Success');
                        saveValue('status', '1');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WalletScreen()),
                        );
                      } else {
                        print ('Incorrect Password');
                      }
                    });
                  } else {
                    print ('Incorrect Email');
                  }
                });
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
