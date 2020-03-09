import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home()
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    Future _showDialogContent() async {
      switch(await showDialog(
        context: inContext,
        builder: (BuildContext inContext) {
          return SimpleDialog(
            title: Text("What's your favorite food?"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(inContext, "brocolli");
                },
                child: Text("Brocolli")
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(inContext, "steak");
                },
                child: Text("Steak")
              )
            ]
          );
        }
      )) {
        case "brocolli": print("Brocolli"); break;
        case "steak": print("Steak"); break;
      }
    }

    _showAlertDialog() {
      return showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("We come in peace..."),
            content: Center(
              child: Text("...shoot to kill shoot to kill shoot to kill")
            ),
            actions: [
              FlatButton(
                child: Text("Beam me up, Scotty!"),
                onPressed: () => Navigator.of(context).pop()
              )
            ]
          );
        }
      );
    }

    _showSnackBar() {
      Scaffold.of(inContext).showSnackBar( //Acessa o Scaffold pai do widget com o inContext(esse)
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
          content: Text("I like pie!"),
          action: SnackBarAction(
            label: "Chown down",
            onPressed: () => print("Gettin' fat!")
          )
        )
      );
    }

    _showBottomSheet() {
      showModalBottomSheet(
        context: inContext,
        builder: (BuildContext inContext) {
          return new Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("What's your favorite pet?"),
              FlatButton(
                child: Text("Dog"),
                onPressed: () => Navigator.of(inContext).pop()
              ),
              FlatButton(
                child: Text("Cat"),
                onPressed: () => Navigator.of(inContext).pop()
              ),
              FlatButton(
                child: Text("Ferret"),
                onPressed: () => Navigator.of(inContext).pop()
              )
            ]
          );
        }
      );
    }

    return Scaffold(
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Show Dialog Content"),
              onPressed: _showDialogContent
            ),
            Tooltip(
              message: "Tapping me will destroy the universe. Ouch!",
              child: RaisedButton(
                child: Text("Show Tooltip"),
                onPressed: () => print("BOOM")
              )  
            ),
            RaisedButton(
              child: Text("Show Alert Dialog"),
              onPressed:_showAlertDialog
            ),
            RaisedButton(
              child: Text("Show Snack Bar"),
              onPressed:_showSnackBar
            ),
            RaisedButton(
              child: Text("Show Bottom Sheet"),
              onPressed:_showBottomSheet
            )
          ]
        )
      )
    );
  }
}