import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
      home: FormApp()
    );
  }
}

class FormApp extends StatefulWidget {
  FormApp({ Key key }) : super(key: key);

  @override
  _FormAppState createState() => _FormAppState();
}

class LoginData {
  String username = "";
  String password = "";
}

class _FormAppState extends State {
  LoginData _loginData = new LoginData();

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: this._formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (String inValue) {
                  if(inValue.length == 0) {
                    return "Please enter username";
                  }
                  return null;
                },
                onSaved: (String inValue) {
                  this._loginData.username = inValue;
                },
                decoration: InputDecoration(
                  hintText: "your@email.com",
                  labelText: "Username (Email address)"
                )
              ),
              TextFormField(
                obscureText: true,
                validator: (String inValue) {
                  if(inValue.length < 10) {
                    return "Password must be >= 10 in length";
                  }
                  return null;
                },
                onSaved: (String inValue) {
                  this._loginData.password = inValue;
                },
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password"
                )
              ),
              RaisedButton(
                child: Text("Log In!"),
                onPressed: () {
                  if(_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    print("Username: ${_loginData.username}");
                    print("Password: ${_loginData.password}");
                  }
                }
              )
            ]
          )
        )
      )
    );
  }
}