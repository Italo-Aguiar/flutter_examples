import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  final String splashImage = 'assets/SplashScreen.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(color: Colors.red)
            child: SvgPicture.asset(
              splashImage,
              semanticsLabel: 'Splash Screen',
            )
          )
        ],
      )
    );
  }
}