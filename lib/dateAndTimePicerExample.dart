import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      home: Scaffold(
        body: DateTimePicker()
      )
    );
  }
}

class DateTimePicker extends StatelessWidget {
  Future<void> _selectDate(inContext) async {
    DateTime selectedDate = await showDatePicker(
      context: inContext,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2024)
    );
    print(selectedDate);
  }

  Future<void> _selectTime(inContext) async {
    TimeOfDay selectedTime = await showTimePicker(
      context: inContext,
      initialTime: TimeOfDay.now()
    );
    print(selectedTime);
  }

  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 50
          ),
          RaisedButton(
            child: Text("Test DatePicker"),
            onPressed: () => _selectDate(inContext),
          ),
          RaisedButton(
            child: Text("Test TimePicker"),
            onPressed: () => _selectTime(inContext),
          )
        ]
      )
    );
  }
}