import 'package:flutter/material.dart';
import 'package:flutter_signup_login/components/text_field_container.dart';
import 'package:flutter_signup_login/constants.dart';

class RoundedInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.textInputType,
    this.icon = Icons.mail,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        keyboardType: textInputType,
        cursorColor: myPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: myPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
