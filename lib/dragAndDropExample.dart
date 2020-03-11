import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DragTarget(
                builder: (BuildContext context, List<String> accepted, List<dynamic> rejected) {
                  return new Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue
                  );
                },
                onAccept: (data) => print(data),
              ),
              Container(
                height: 200
              ),
              Draggable(
                data: "I was dragged",
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red
                ),
                feedback: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow
                ),
              )
            ]
          )
        )
      )
    );
  }
}

