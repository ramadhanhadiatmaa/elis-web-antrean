import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.color,
    required this.size,
    required this.weight,
    this.style,
  });

  final String title;
  final Color color;
  final double size;
  final FontWeight weight;
  final FontStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.lato(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontStyle: style,
      ),
    );
  }
}
