import 'package:flutter/material.dart';

void main() => runApp(DismissibleApp());

class DismissibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabView Example',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabView Example'),
            
          ),
          body: Center(
            child: Dismissible(
              key: GlobalKey(),
              onDismissed: (direction) => print("GoodBye!"),
              background: Container( //leave-behind
                color: Colors.purple,
                width: 300,
                height: 150,
                child: Center(
                  child: Text("Sobrou isso aqui")
                )
              ),
              child: Container(
                color: Colors.yellow,
                width: 300,
                height: 150,
                child: Center(
                  child: Text("Swipe me")
                )
              )
            )  
          ) 
        )
      )
    );
  }
}