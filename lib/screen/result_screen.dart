import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You Answer X out of Y question correctly!'),
          const SizedBox(height: 10),
          const Text('List Of Answer and Question'),
          const SizedBox(height: 30),
          TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
        ],
      ),
    );
  }
}
