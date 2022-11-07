import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final Function validateAnswer;
  final List<Map<String, Object>> questions;
  final currentIndex;
  const Quiz(
      {super.key,
      required this.questions,
      required this.currentIndex,
      required this.validateAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question: questions[currentIndex]["question"] as String),
        ...(questions[currentIndex]["options"] as List<String>).map(
          (option) {
            return Answer(validateAnswer: validateAnswer, option: option);
          },
        ).toList(),
      ],
    );
  }
}
