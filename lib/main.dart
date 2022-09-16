import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': "What's your favourite color?",
      'answer': [
        {"text": "Black", "score":4},
        {"text": "Red", "score":3},
        {"text": "Magenta", "score":6},
        {"text": "Blue", "score":8},
      ]
    },
    {
      'question': "What's your favourite animal?",
      'answer': [
        {"text": "Tiger", "score": 7},
        {"text": "Elephant", "score": 9},
        {"text": "Deer", "score": 5},
        {"text": "Cow", "score": 4},
        ]
    },
    {
      'question': "What's your favourite fruit?",
      'answer': [
        {"text":"Mango", "score":8},
        {"text":"Apple", "score":6},
        {"text":"Banana", "score":2},
        {"text":"Orange", "score":5},
        ]
    },
    {
      'question': "What's your favourite flower?",
      'answer': [
        {"text":"Rose", "score":5},
        {"text":"Lily", "score":1},
        {"text":"Daisy", "score":6},
        {"text":"Jasmine", "score":9},
        ]
    },
  ];

  var _qIndex = 0;
  var _totalScore = 0;

  void _checkAnswer(int score) {
    _totalScore += score;
    setState(() {
      _qIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Quize App")),
        body: _qIndex < _questions.length
            ? Quiz(
              checkAnswer: _checkAnswer, 
              questions: _questions, 
              qIndex: _qIndex,)
            : Result(resultScore: _totalScore, resetQuiz: _resetQuiz,),
      ),
    );
  }
}
