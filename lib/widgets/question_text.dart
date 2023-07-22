import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesionText extends StatelessWidget {
  const QuesionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
