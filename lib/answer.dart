import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final Function validateAnswer;
  final String option;
  const Answer({super.key, required this.validateAnswer, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => validateAnswer(option),
        child: Text(option),
      ),
    );
  }
}
