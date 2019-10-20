import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Red', 'White', 'Blue', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Lion', 'Tiger', 'Elephant', 'Rabbit']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max1', 'Max2', 'Max3', 'Max4']
      }
  ];
  
  var _questionIndex = 0;

  void _answerQuestion() {

    if(_questionIndex < _questions.length) {
      print('We have more questions in the list!!!');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? 
        Quiz(
          questions: _questions,
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex
        ) : 
        Result(),
      ),
    );
  }
}