import 'package:flutter/material.dart';

import '../constants/color.dart';
import 'text_widget.dart';

class KelolaWidget extends StatelessWidget {
  const KelolaWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: MediaQuery.sizeOf(context).width,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: TextWidget(
              title: title,
              color: cBlack,
              size: 14,
              weight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          height: 2,
          color: cForeground,
        ),
      ],
    );
  }
}
