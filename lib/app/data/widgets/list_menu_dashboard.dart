import 'package:flutter/material.dart';

import 'text_widget.dart';

class ListMenuDashboard extends StatelessWidget {
  const ListMenuDashboard({
    required this.title,
    required this.bColor,
    required this.tColor,
    required this.press,
    super.key,
  });

  final String title;
  final Color bColor, tColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: InkWell(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
            color: bColor,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),
            child: TextWidget(
              title: title,
              color: tColor,
              size: 14,
              weight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
