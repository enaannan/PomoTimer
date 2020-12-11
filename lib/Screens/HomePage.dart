import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'RegisterScreen.dart';
import 'package:pomotimer/widgets/BlueCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(vertical: 25.0),
              child: Image(image: AssetImage("assets/images/Pomotimer.png"))),
          BlueCard(
            textName: "Register",
            action: (){},
          ),
          SizedBox(
            height: 15.0,
          ),
          BlueCard(
            textName: "Login",
           action: (){},
          )
        ],
      ),
    );
  }
}
