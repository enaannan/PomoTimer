import 'package:flutter/material.dart';

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
            Column(
              children: [
                SizedBox(
                  height: 10.0,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  height: 100.0,
                  color: Colors.blue,
                )
              ],
            ),
            Text("sdfs"),
            Text("sdfs"),
            Text("sdfs"),
          ],
        ),
      ),
    );
  }
}
