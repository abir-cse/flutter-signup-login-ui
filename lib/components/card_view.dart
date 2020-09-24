import 'package:flutter/material.dart';
import 'package:flutter_signup_login/constants.dart';
class MyCardView extends StatelessWidget {
  final String cardTitle;
  final IconData icon;

  const MyCardView({Key key,
    this.cardTitle,
    this.icon,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Material(
            color: Colors.white,
            elevation: 3.0,
            borderRadius: BorderRadius.circular(8.0),
            shadowColor: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Padding (
                      padding: EdgeInsets.only( right: 20),
                      child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 5,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: myVioletColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 30),
                              child: Row(
                                children: [
                                  Icon (
                                    icon,
                                    color: myVioletColor,
                                  ),
                                  SizedBox(width: 40.0),
                                  Text(
                                      cardTitle,
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        letterSpacing: 0.5,
                                      )
                                  ),
                                ],
                              ),
                            )
                          ]
                      ),
                    )
                ),
              ],
            )
        ));
  }
}
