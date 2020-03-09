import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepper Example',
      home: StepperApp()
    );
  }
}

class StepperApp extends StatefulWidget {
  StepperApp({ Key key }) : super(key: key);

  @override
  _StepperAppState createState() => _StepperAppState();
}

class _StepperAppState extends State {
  var _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Example')
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepContinue: _currentStep < 2 ?
          () => setState(() => _currentStep += 1) : null,
        onStepCancel: _currentStep > 0 ?
          () => setState(() => _currentStep -= 1) : null,
        steps: [
          Step(
            title: Text('Get Ready'),
            isActive: true,
            content: Text("Let's begin...")
          ),
          Step(
            title: Text('Get Set'),
            isActive: true,
            content: Text("Ok, just a little more...")
          ),
          Step(
            title: Text('Go!'),
            isActive: true,
            content: Text("And we're done!")
          )
        ]
      )
    );
  }
}