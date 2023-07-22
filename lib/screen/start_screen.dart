import 'package:flutter/material.dart';
import 'package:quiz_app/format/style.dart';
import 'package:quiz_app/widgets/my_textfiled.dart';

import '../widgets/my_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/splash.png';
    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, scale: 1.5),
            Text("Let's Play Quiz", style: textSplash1),
            const SizedBox(height: 60),
            const Text("Enter your information below"),
            const SizedBox(height: 8),
            const MyTextField(),
            const SizedBox(height: 36),
            MyButton(onPressed: startQuiz),
          ],
        ),
      ),
    );
  }
}
