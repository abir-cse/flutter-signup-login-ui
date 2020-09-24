import 'package:flutter/material.dart';
import 'package:flutter_signup_login/components/text_field_container.dart';
import 'package:flutter_signup_login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: myPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: myPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
