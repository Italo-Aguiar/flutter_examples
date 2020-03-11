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
  var _color = Colors.red;
  var _fontSize = 20.0;
  var _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                color: _color,
                fontSize: _fontSize
              ),
              child: Text("I am some text")
            ),
            RaisedButton(
              child: Text("Enhance! Enhance! Enhance!"),
              onPressed: () {
                if(_switch) {
                  _color = Colors.blue;
                  _fontSize = 40.0;
                } else {
                  _color = Colors.red;
                  _fontSize = 20.0;
                }
                _switch = !_switch;
                setState(() {});
              }
            )
          ]
        )
      )
    );
  }
}
