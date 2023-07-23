import 'package:flutter/material.dart';
import 'package:quiz_app/format/style.dart';

class QuistionSummary extends StatelessWidget {
  const QuistionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor:
                        data['correct_answer'] == data['user_answer']
                            ? Colors.white24
                            : Colors.transparent,
                    foregroundColor: Colors.white,
                    radius: 20,
                    child:
                        Text(((data['question_index'] as int) + 1).toString())),
                title: Text(data['question'].toString(),
                    textAlign: TextAlign.left),
                subtitle: data['correct_answer'] != data['user_answer']
                    ? Column(
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
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 6),
                          Text(
                            '${data['correct_answer']}',
                            style: TextStyle(
                              color: btnColor,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          )
        ]);
      }).toList(),
    );
  }
}
