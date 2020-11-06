import 'package:flutter/material.dart';
import 'package:pomotimer/UIComponents/ViewCards.dart';
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
        ViewCards(
          topLeftRadius: 30,
          topRightRadius: 30,
          bottomLeftRadius: 30,
          bottomRightRadius: 30,
          offsetX: 0,
          offsetY: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Focus sessions"),
                    Container(
                      child: Row(
                        children: [
                          Text("This week"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(child: Container(color: Colors.green,))
              ],
            ),
          ),
        ),
        SizedBoxTrasparent(),
        ViewCards(
          topLeftRadius: 30,
          topRightRadius: 30,
          offsetX: 0,
          offsetY: 3,
        )
      ],
    );
  }
}
