import 'package:flutter/material.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer Example")
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("Item 1"),
              Divider(),
              Text("Item 2"),
              Divider(),
              Text("Item 3"),
            ]
          )
        ),
        body: Center(
          child: Row(
            children: [
              Text("Child 1"),
              Text("Child 1"),
              Text("Child 1"),
            ]
          )
        )
      )
    );
  }
}