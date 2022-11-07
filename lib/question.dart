import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(question,
            style: const TextStyle(fontSize: 28), textAlign: TextAlign.center));
  }
}
