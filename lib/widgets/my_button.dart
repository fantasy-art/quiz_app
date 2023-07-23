import 'package:flutter/material.dart';
import 'package:quiz_app/format/style.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon});
  final void Function()? onPressed;
  final String text;
  final Widget icon;
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
            icon: icon,
            label: Text(text, style: const TextStyle(fontSize: 20))),
      ),
    );
  }
}

//Icons.arrow_right_alt