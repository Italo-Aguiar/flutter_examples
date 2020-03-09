import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Checkers Example',
      home: FormCheckers()
    );
  }
}

class FormCheckers extends StatefulWidget {
  FormCheckers({ Key key }) : super(key : key);

  @override
  _FormCheckersState createState() => _FormCheckersState();
}

class _FormCheckersState extends State {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  var _checkboxValue = false;
  var _switchValue = false;
  var _sliderValue = .3;
  var _radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: this._formKey,
          child: Column(
            children: [
              Checkbox(
                value: _checkboxValue,
                onChanged: (bool inValue) {
                  setState(() {
                    _checkboxValue = inValue;
                  });
                },
              ),
              Switch(
                value: _switchValue,
                onChanged: (bool inValue) {
                  setState(() {
                    _switchValue = inValue;
                  });
                },
              ),
              Slider(
                min: 0,
                max: 20,
                value: _sliderValue,
                onChanged: (inValue) {
                  setState(() {
                    _sliderValue = inValue;
                  });
                },
                activeColor: Colors.purple,
                inactiveColor: Colors.blue,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: (int inValue) {
                      setState(() {
                        _radioValue = inValue;
                      });
                    },
                  ),
                  Text("Option 1")
                ]
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: (int inValue) {
                      setState(() {
                        _radioValue = inValue;
                      });
                    },
                  ),
                  Text("Option 2")
                ]
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: (int inValue) {
                      setState(() {
                        _radioValue = inValue;
                      });
                    },
                  ),
                  Text("Option 3")
                ]
              )
            ]
          )
        )
      )
    );
  }
}