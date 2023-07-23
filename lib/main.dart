import 'package:flutter/material.dart';

import 'package:quiz_app/screen/quiz.dart';
import 'package:quiz_app/format/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgColor,
        body: const SafeArea(child: Quiz()),
      ),
    );
  }
}
