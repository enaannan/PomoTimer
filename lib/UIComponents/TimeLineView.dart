import 'package:flutter/material.dart';
import 'SizedBoxTrasparent.dart';

class TimeLineView extends StatelessWidget {
  const TimeLineView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxTrasparent(),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Focus sessions"),
                  Container(child: Row(children: [ Text("This week"),
                  Icon(Icons.arrow_drop_down)],),)
                 
                 
                ],
              ),
              Container(color: Colors.blue,),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}

