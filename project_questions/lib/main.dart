import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Questionary.dart';
import 'Result.dart';

void main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  int _selectedQuestion = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'text': 'What`s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 6},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 3}
      ]
    },
    {
      'text': 'What`s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 5}
      ]
    },
    {
      'text': 'What`s your favorite Game?',
      'answers': [
        {'text': 'Resident Evil', 'score': 6},
        {'text': 'God of war', 'score': 2},
        {'text': 'Devil may cry', 'score': 7},
        {'text': 'Mario', 'score': 3}
      ]
    }
  ];

  void _answer(int score) {
    if( hasQuestion ) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  bool get hasQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =  hasQuestion ? _questions[_selectedQuestion]['answers'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
        ),
        body:  hasQuestion ?
        Column(
          children: [
            Questionary(questions: _questions, selectedQuestion: _selectedQuestion, answer: _answer)
          ],
        ) : Result('Thanks!', _totalScore),

      ),
    );
  }
}

class QuestionApp extends StatefulWidget {

  @override
  QuestionAppState createState() {
    // TODO: implement createState
    return QuestionAppState();
  }
}
