import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            title: Text("PomoTimer"),
          ),
          Text("Current Task"),
          Expanded(
            child: CircularStepProgressIndicator(
              totalSteps: 100,
              stepSize: 2,
              selectedColor: Colors.red,
              unselectedColor: Colors.grey[200],
              unselectedStepSize: 15,
              currentStep: 10,
              selectedStepSize: 15,
              roundedCap: (_, __) => true,
              child: Column(
                children: [
                  Text("12:58"),
                  Text("2 out of 4 sessions"),
                ],
              ),
            ),
          ),
          Text("Stay focused for " + "timed" + " mins"),
          Row(
            children: [
              RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                child: Icon(Icons.replay),
                fillColor: Colors.white,
              ),
              TextButton(
                onPressed: null,
                child: Icon(Icons.replay),
              ),
              TextButton(onPressed: null, child: null),
              TextButton(onPressed: null, child: null),
            ],
          )
        ],
      ),
    );
  }
}
