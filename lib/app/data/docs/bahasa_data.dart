import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../widgets/text_widget.dart';

class DataBahasa extends StatelessWidget {
  const DataBahasa({
    super.key,
    required this.id,
    required this.bahasa,
  });

  final String id, bahasa;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextWidget(
              title: id,
              color: cBlack,
              size: 12,
              weight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextWidget(
              title: bahasa,
              color: cBlack,
              size: 12,
              weight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
