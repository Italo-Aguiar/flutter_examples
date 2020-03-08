import 'package:flutter/material.dart';

void main() => runApp(TabViewApp());

class TabViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabView Example',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabView Example'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.announcement)),
                Tab(icon: Icon(Icons.cake)),
                Tab(icon: Icon(Icons.cloud))
              ]
            )
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Annoucements")
              ),
              Center(
                child: Text("Birthdays")
              ),
              Center(
                child: Text("Data")
              ),
            ]
          )
        )
      )
    );
  }
}