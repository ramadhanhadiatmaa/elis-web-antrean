import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    required this.tColor,
    required this.bColor,
    required this.size,
    required this.rad,
  });

  final String title;
  final Color tColor, bColor;
  final double size, rad;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rad),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: tColor,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
