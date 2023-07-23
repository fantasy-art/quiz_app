import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../format/style.dart';

class ResultText extends StatelessWidget {
  const ResultText({
    super.key,
    required this.correctQues,
    required this.allQues,
  });
  final int correctQues;
  final int allQues;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You Answer ',
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(correctQues.toString(),
            style: GoogleFonts.lato(
                fontSize: 20, fontWeight: FontWeight.bold, color: btnColor)),
        Text(' out of ',
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(allQues.toString(),
            style: GoogleFonts.lato(
                fontSize: 20, fontWeight: FontWeight.bold, color: btnColor)),
        Text(' question correctly!',
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold))
      ],
    );
  }
}
