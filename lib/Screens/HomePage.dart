import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'RegisterScreen.dart';
import 'package:pomotimer/UIComponents/RegisterCard.dart';

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
          RegisterCard(
            textName: "Register",
            nextScreen: RegisterScreen(),
          ),
          SizedBox(
            height: 15.0,
          ),
          RegisterCard(
            textName: "Login",
            nextScreen: LoginScreen(),
          )
        ],
      ),
    );
  }
}
