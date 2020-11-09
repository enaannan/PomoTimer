import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pomotimer/UIComponents/ProjectsView.dart';
import 'package:pomotimer/UIComponents/TimeLineView.dart';
import 'package:pomotimer/UIComponents/DailyView.dart';
import 'package:pomotimer/UIComponents/ActivityView.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Statistics"),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Projects",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Timeline",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Daily",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Activity",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProjectsView(),
            TimeLineView(),
            DailyView(),
            ActivityView(),
          ],
        ),
      ),
    );
  }
}

