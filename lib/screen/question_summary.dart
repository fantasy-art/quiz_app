import 'package:flutter/material.dart';
import 'package:quiz_app/format/style.dart';

class QuistionSummary extends StatelessWidget {
  const QuistionSummary(
      {super.key, required this.summaryData, required this.colortile});
  final List<Map<String, Object>> summaryData;
  final Color colortile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                  tileColor: colortile,
                  leading: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(fontSize: 25, color: btnColor),
                  ),
                  title: Text(data['question'].toString(),
                      textAlign: TextAlign.left),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      Text(
                        '* Correct Answer: ${data['correct_answer']}',
                        style: TextStyle(color: btnColor),
                      ),
                      Text(
                        '* Your Answer: ${data['user_answer']}',
                      ),
                    ],
                  )),
            ),
          )
        ]);
      }).toList(),
    );
  }
}
