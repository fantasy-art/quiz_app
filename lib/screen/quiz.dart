import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/screen/result_screen.dart';

import 'quistion_screen.dart';
import 'start_screen.dart';
import '../format/style.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'StartScreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionScreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'ResultScreen';
        selectedAnswer.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'StartScreen'
        ? StartScreen(startQuiz: switchScreen)
        : activeScreen == 'QuestionScreen'
            ? QuestionScreen(onSelectAnswer: chooseAnswer)
            : ResultScreen(choosenAnswer: selectedAnswer);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgColor,
        body: screenWidget,
      ),
    );
  }
}
