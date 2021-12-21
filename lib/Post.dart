import 'dart:convert';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url =
      "https://wz274kdho9.execute-api.us-east-1.amazonaws.com/plantas/valvula";

  void postData() async {
    try {
      final response = await post(Uri.parse(url), body: {"message": "ON"});

      print(response.body);
    } catch (er) {}
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: postData,
          child: Text("Encender"),
        ),
      )),
    );
  }
}

