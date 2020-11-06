import 'package:flutter/material.dart';
import 'LinearProgressBar.dart';
import 'SizedBoxTrasparent.dart';


class ProjectsView extends StatelessWidget {
  const ProjectsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxTrasparent(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      offset: Offset(0, -5),
                      blurRadius: 1,
                      spreadRadius: 0.1)
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Task Statistics",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Container()
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: ListView(
            children: [
              LinearProgressBar(
                selectedColor: Colors.red,
              ),
              LinearProgressBar(
                selectedColor: Colors.yellow,
              ),
              LinearProgressBar(selectedColor: Colors.blue),
            ],
          ),
          flex: 1,
        )
      ],
    );
  }
}



