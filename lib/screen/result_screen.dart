import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
