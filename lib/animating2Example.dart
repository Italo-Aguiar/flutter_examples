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
  var _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 1),
              firstChild: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100.0
              ),
              secondChild: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 100.0
              ),
              crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            RaisedButton(
              child: Text("Cross-Fade!"),
              onPressed: () {
                _showFirst = !_showFirst;
                setState(() {});
              }
            )
          ]
        )
      )
    );
  }
}
