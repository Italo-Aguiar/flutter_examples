import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Center(
              child: Theme(
                data: ThemeData(accentColor: Colors.red),
                child: Container(
                  color: Theme.of(context).accentColor,
                  child: Text("Text with a background color", style: Theme.of(context).textTheme.title)
                )
              )
            ),
            Center(
              child: Opacity(
                opacity: .55, 
                child: Text("Faded")
              )
            ),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF000000), Color(0xFFFF0000)],
                    tileMode: TileMode.repeated
                  )
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text("Hello", style: TextStyle(color: Colors.white))
                  )
                )
              )
            ),
            Center(
              child: Container(
                color: Colors.yellow,
                child: Transform(
                  alignment: Alignment.bottomLeft,
                  transform: Matrix4.skewY(0.4)..rotateZ(-3 / 12.0),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    color: Colors.red,
                    child: Text("Eat at Joe's!")
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}
