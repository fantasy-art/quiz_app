import 'package:flutter/material.dart';

import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/format/style.dart';
import 'package:quiz_app/widgets/answer_btn.dart';
import 'package:quiz_app/widgets/question_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuesIndex = 0;

  void answerQuestion(String selctedAnswer) {
    widget.onSelectAnswer(selctedAnswer);
    setState(() {
      currentQuesIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuesion = questions[currentQuesIndex];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Question Number:  ${currentQuesIndex + 1}',
              style: title,
            ),
          ),
          const SizedBox(height: 30),
          QuesionText(text: currentQuesion.text),
          const SizedBox(height: 30),
          ...currentQuesion.getShuffledAnswers().map(
            (answer) {
              return AnswerBtn(
                  text: answer, onPressed: () => answerQuestion(answer));
            },
          ),
        ],
      ),
    );
  }
}
