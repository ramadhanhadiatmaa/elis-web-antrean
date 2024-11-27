import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.title,
    required this.press,
    required this.tColor,
    required this.bColor,
  });

  final String title;
  final VoidCallback press;
  final Color tColor, bColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: InkWell(
            onTap: press,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: bColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: tColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
