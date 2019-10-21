import 'package:flutter/material.dart';

import './textcontrol.dart';
import './buttoncontrol.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var textData = 'Flutter Demo Home Page';

  void _changeText() {
    setState(() {
      textData = 'Changed the text';
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            children: <Widget>[
              TextControl(textData),
              ButtonControl(_changeText),
            ],
          ),
        ),
      )
    );
  }
}