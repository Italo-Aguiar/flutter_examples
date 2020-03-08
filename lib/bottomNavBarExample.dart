import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  var _currentPage = 0;

  var _pages = [
    Text("Page 1 - Annoucements"),
    Text("Page 2 - Birthdays"),
    Text("Page 3 - Data")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_currentPage)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            title: Text("Annoucements")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            title: Text("Birthdays")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            title: Text("Data")
          )
        ],
        currentIndex: _currentPage,
        fixedColor: Colors.red,
        onTap: (int inIndex) {
          setState(() {
            _currentPage = inIndex;
          });
        }
      ),
    );
  }
}