import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "What's my favourite lang?",
      "options": ["JS", "C", "Java", "Python"],
      "answer": 'JS'
    },
    {
      "question": "What's my favourite color?",
      "options": ["Lavendar", "Sea Green", "Bright yellow", "Baby pink"],
      "answer": 'Lavendar'
    },
    {
      "question": "What's my favourite animal?",
      "options": ["dog", "cat", "rat", "Baby shark"],
      'answer': 'cat'
    }
  ];
  var _currentIndex = 0;
  var _totalScores = 0;

  @override
  Widget build(BuildContext context) {
    void validateAnswer(optionChosen) {
      if (optionChosen == _questions[_currentIndex]['answer']) {
        _totalScores += 1;
      }
      setState(() => {_currentIndex++});
    }

    void resetQuiz() {
      setState(() => {_currentIndex = 0, _totalScores = 0});
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: Colors.purple[200],
        ),
        body: _currentIndex < _questions.length
            ? Quiz(
                questions: _questions,
                currentIndex: _currentIndex,
                validateAnswer: validateAnswer)
            : Result(resetQuiz: resetQuiz, totalScores: _totalScores),
      ),
    );
  }
}
