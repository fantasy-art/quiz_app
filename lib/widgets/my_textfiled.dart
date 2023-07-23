import 'package:flutter/material.dart';

final txtName = TextEditingController();

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: txtName,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        textCapitalization: TextCapitalization.characters,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: 'Your Name',
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
