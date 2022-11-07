import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final totalScores;
  const Result({super.key, this.totalScores, required this.resetQuiz});

  String get resultText {
    var finalString = "";
    if (totalScores > 2) {
      finalString += "YAY! You know me :D";
    } else if (totalScores > 1) {
      finalString += "Uhm.. You kinda know me :)";
    } else {
      finalString += "You don't know me at all! :'(";
    }
    return finalString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(60),
            child: Text(
              "Your score is $totalScores. ",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              resultText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(234, 80, 74, 247)),
            ),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Reset'),
          )
        ],
      ),
    );
  }
}
