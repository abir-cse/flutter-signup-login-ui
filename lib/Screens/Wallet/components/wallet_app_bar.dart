

import 'package:flutter/material.dart';
import 'package:flutter_signup_login/Screens/Wallet/components/body.dart';
import 'package:flutter_signup_login/Screens/Welcome/welcome_screens.dart';
import 'package:flutter_signup_login/components/save_value.dart';
import '../../../constants.dart';

class WalletAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: myVioletColor,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home",),
                Tab(icon: Icon(Icons.business_center), text: "Details",),
                Tab(icon: Icon(Icons.account_balance_wallet), text: "Wallet",),
                Tab(icon: Icon(Icons.attach_money), text: "Finance",),
                Tab(icon: Icon(Icons.history), text: "History",),
              ],
            ),
            title: Text('Wallet'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                ),
                onPressed: () {
                  saveValue('status', '0').then((value) {
                    if (value == 'success') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen()),
                      );
                    }
                  });

                },
              )
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: TabBarView(
            children: [
              Body(),
              Body(),
              Body(),
              Body(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
