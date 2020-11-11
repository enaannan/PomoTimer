import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            elevation: 0.0,
            centerTitle: true,
            title: Text("Author"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.pink, offset: Offset(0, 5))
              ],
            ),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                SizedBox(
                  height: 200,
                ), //TODO:Remove this sized box
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Bra Nhii"),
                    Text("sfasfas@gmail.com"),
                    SizedBox()
                  ],
                ),
                Positioned(
                  left: 100,
                  bottom: 150,
                  child: ClipOval(
                    clipper: CircularClipper(),
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.fill,
                      height: 100,
                      width: 100,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircularClipper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
