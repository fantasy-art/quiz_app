import 'package:flutter/material.dart';

import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/format/style.dart';
import 'package:quiz_app/screen/question_summary.dart';
import 'package:quiz_app/screen/quiz.dart';
import 'package:quiz_app/widgets/my_button.dart';
import 'package:quiz_app/widgets/my_textfiled.dart';
import 'package:quiz_app/widgets/result_text.dart';

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
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txtName.text, style: title),
            const SizedBox(height: 14),
            ResultText(
                correctQues: numCorrectQuestion, allQues: numTotalQuestion),
            const SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: QuistionSummary(
                  summaryData: summaryData,
                ),
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Quiz(),
                  ));
                  txtName.clear();
                },
                text: 'Restart Quiz')
          ],
        ),
      ),
    );
  }
}
