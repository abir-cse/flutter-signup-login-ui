import 'package:flutter/material.dart';
import 'package:flutter_signup_login/components/card_view.dart';
import 'package:flutter_signup_login/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
                color: myVioletColor,
                shape: BoxShape.rectangle
            ),
          ),
          Row (
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column (
                  children: [
                    Text('WALLET CASH',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 18,
                      ),
                    ),
                    Text("\$1250",
                      style: TextStyle(
                        color: myGoldenColor,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 30,
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        text: 'WALLET POINTS ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '0',
                            style: TextStyle(
                              color: myGoldenColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Row (
                  children: [
                    Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: RaisedButton(
                        child: Text("TOP UP"),
                        color: myTopUPButtonColor,
                        textColor: Colors.white,
                        onPressed: () {  },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 160,
            left: 30,
            child: Container(
              width: size.width-60,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                            Icons.send,
                          color: myVioletColor,
                        ),
                      ),
                      Text("Transfer",
                      style: TextStyle(
                        color: myVioletColor,
                      ),)
                    ],
                  ),
                  VerticalDivider(color: Colors.grey),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.settings_overscan,
                          color: myVioletColor,
                        ),
                      ),
                      Text("Scan",
                        style: TextStyle(
                          color: myVioletColor,
                        ),)
                    ],
                  ),
                  VerticalDivider(color: Colors.grey),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.account_circle,
                          color: myVioletColor,
                        ),
                      ),
                      Text("Profile",
                        style: TextStyle(
                          color: myVioletColor,
                        ),)
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 260,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        MyCardView(cardTitle: "Home", icon: Icons.home,),
                        MyCardView(cardTitle: "Transport", icon: Icons.directions_bus,),
                        MyCardView(cardTitle: "Shopping",icon: Icons.shopping_cart,),
                      ])),
            ),
          )
        ],
      ),
    );
  }
}
