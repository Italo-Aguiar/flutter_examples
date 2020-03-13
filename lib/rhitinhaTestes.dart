import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ApiTest()
    );
  }
}

// class EspelhoPonto {
//   final 
// }

class ApiTest extends StatefulWidget {
  ApiTest({ Key key }) : super(key : key);

  @override
  _ApiTestState createState() => _ApiTestState();
}

class _ApiTestState extends State {
  final _token = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjhjZjBjNjQyZDQwOWRlODJlY2M5MjI4ZTRiZDc5OTkzOTZiNTY3NDAiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiw410YWxvIEFzc3Vuw6fDo28gQWd1aWFyIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BQXVFN21ESEl4Um5oU1haTzRZTzB0cy14MHlTYWE2Mi1TVF92dnRXWVRkYiIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9yaGl0YS1kZW1vLWRlZmluaXRpdm8iLCJhdWQiOiJyaGl0YS1kZW1vLWRlZmluaXRpdm8iLCJhdXRoX3RpbWUiOjE1ODQwMjkzMzUsInVzZXJfaWQiOiJocVFyTzFyTDJkWW92M0hlNlVrU0V0NkNqbjQzIiwic3ViIjoiaHFRck8xckwyZFlvdjNIZTZVa1NFdDZDam40MyIsImlhdCI6MTU4NDAyOTMzNSwiZXhwIjoxNTg0MDMyOTM1LCJlbWFpbCI6Iml0YWxvQHNhbnRvZGlnaXRhbC5jb20uYnIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJnb29nbGUuY29tIjpbIjExMzE2NjU3NDAzNTM5NTY1NjcwMSJdLCJlbWFpbCI6WyJpdGFsb0BzYW50b2RpZ2l0YWwuY29tLmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoiZ29vZ2xlLmNvbSJ9fQ.iWwR_OsDXZG4Q9HfdLqAglgEPXKzHqDNXNXXp99JMbbgUav1wpFNBIRmvCIWV5jaOSkpt_mVpQ3K8qCCUFqAYmv33XRighYaz4T3hhsuUyCvGQ9vycpEcb8a9V7-0_U8peYCcfwxb6fqCmGJFzFkTLrbbez3cGxzFSqh4FWPJ_MyVAdoO7H2yHeMgYfRrTKMiJNw9ftdTjwoWknD2DiodC9pc4KXWZxDWmem1Y8Dxi-g5F-8zZQfukmDt330bfL9pFLpREu2y8roITh859e1Oj03Gi9VOmIfDjpvvez_EAVblT7OJAS9HyyZ7OGVd3FI9DsWB3GUugC_QtzHvVYFaw';


  Future getEspelho() async {
    final response = await http.get(
      "https://develop-dot-rhita-demo-definitivo.appspot.com/ponto/italo@santodigital.com.br?di=16-01-2020&df=16-01-2020",
      headers: {HttpHeaders.authorizationHeader: 'Bearer $_token'}  
    );

    Map body = json.decode(response.body);
    
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Printa result"),
          onPressed: () async {
            Map response = await getEspelho();

            print(response);
          },
        )
      )
    );
  } 
}




