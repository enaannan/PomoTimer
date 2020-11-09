import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              
              width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                
                  BoxShadow(
                    color: Colors.grey[200]
                    ,spreadRadius: 0.01,
                    blurRadius: 10
                    ,offset: Offset(0, 10))
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text("Create new Task",
                  //TODO:fix all font families used in the app to load locally 
                  style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold)),
                )),
          )
        ],
      ),
    );
  }
}
