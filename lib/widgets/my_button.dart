import 'package:flutter/material.dart';
import 'package:quiz_app/format/style.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                backgroundColor: btnColor, foregroundColor: Colors.black),
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz', style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
