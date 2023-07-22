import 'package:flutter/material.dart';

import '../format/style.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              foregroundColor: Colors.black,
              backgroundColor: btnColor,
              side: BorderSide(color: btnColor)),
          onPressed: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
          )),
    );
  }
}
