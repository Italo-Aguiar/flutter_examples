import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animate()
    );
  }
}

class Animate extends StatefulWidget{
  Animate({ Key key }) : super(key : key);

  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State {
  var _color = Colors.yellow;
  var _height = 200.0;
  var _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              color: _color, 
              width: _width,
              height: _height
            ),
            RaisedButton(
              child: Text("Animate!"),
              onPressed: () {
                _color = Colors.red;
                _height = 350.0;
                _width = 350.0;
                setState(() {});
              }
            ),
            RaisedButton(
              child: Text("De-Animate!"),
              onPressed: () {
                _color = Colors.yellow;
                _height = 200.0;
                _width = 200.0;
                setState(() {});
              }
            )
          ]
        )
      )
    );
  }
}
