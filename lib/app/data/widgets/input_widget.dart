import 'package:flutter/material.dart';

import '../constants/color.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        autocorrect: false,
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          hintText: title,
          hintStyle: TextStyle(
            color: cBlack.withOpacity(0.5),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
