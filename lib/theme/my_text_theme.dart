import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme extends TextTheme {
  final TextStyle titleLarge1;
  final TextStyle titleMedium1;
  final TextStyle titleSmall1;
  final TextStyle labelLarge1;
  final TextStyle labelMedium1;
  final TextStyle labelSmall1;
  final TextStyle goldLabelMini;
  final TextStyle goldLabelSmall;
  final TextStyle goldLabelMedium;
  final TextStyle goldLabelLarge;
  final TextStyle subtitleLarge;
  final TextStyle subtitleMedium;
  final TextStyle subtitleSmall;
  const MyTextTheme({
    required this.titleLarge1,
    required this.titleMedium1,
    required this.titleSmall1,
    required this.labelLarge1,
    required this.labelMedium1,
    required this.labelSmall1,
    required this.goldLabelMini,
    required this.goldLabelSmall,
    required this.goldLabelMedium,
    required this.goldLabelLarge,
    required this.subtitleLarge,
    required this.subtitleMedium,
    required this.subtitleSmall,
  });
}

MyTextTheme get myTextTheme {
  return MyTextTheme(
    labelLarge1: GoogleFonts.lato(color: Colors.white, fontSize: 20),
    labelMedium1: const TextStyle(color: Colors.white, fontSize: 20),
    labelSmall1: GoogleFonts.lato(color: Colors.white, fontSize: 18),
    titleLarge1: GoogleFonts.signika(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 70,
      shadows: const [
        Shadow(
          blurRadius: 1.0,
          color: Colors.black54,
          offset: Offset(2.0, 2.0),
        ),
      ],
    ),
    titleMedium1: const TextStyle(color: Colors.white, fontSize: 25),
    titleSmall1: const TextStyle(color: Colors.white, fontSize: 18),
    subtitleLarge: GoogleFonts.publicSans(
      color: Colors.amber,
      fontSize: 30,
      shadows: const [
        Shadow(
          blurRadius: 1.0,
          color: Colors.black54,
          offset: Offset(2.0, 2.0),
        ),
      ],
    ),
    subtitleMedium: GoogleFonts.lato(color: Colors.amber, fontSize: 20),
    subtitleSmall: const TextStyle(color: Colors.amber, fontSize: 20),
    goldLabelMini: const TextStyle(color: Colors.amber, fontSize: 13),
    goldLabelSmall: const TextStyle(color: Colors.amber, fontSize: 18),
    goldLabelMedium: const TextStyle(color: Colors.amber, fontSize: 25),
    goldLabelLarge: const TextStyle(color: Colors.amber, fontSize: 30),
  );
}
