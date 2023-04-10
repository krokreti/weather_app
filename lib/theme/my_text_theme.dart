import 'package:flutter/material.dart';

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
  return const MyTextTheme(
    labelLarge1: TextStyle(color: Colors.white, fontSize: 20),
    labelMedium1: TextStyle(color: Colors.white, fontSize: 20),
    labelSmall1: TextStyle(color: Colors.white, fontSize: 18),
    titleLarge1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 70,
      shadows: [
        Shadow(
          blurRadius: 1.0,
          color: Colors.black54,
          offset: Offset(2.0, 2.0),
        ),
      ],
    ),
    titleMedium1: TextStyle(color: Colors.white, fontSize: 25),
    titleSmall1: TextStyle(color: Colors.white, fontSize: 18),
    subtitleLarge: TextStyle(color: Colors.amber, fontSize: 30),
    subtitleMedium: TextStyle(color: Colors.amber, fontSize: 20),
    subtitleSmall: TextStyle(color: Colors.amber, fontSize: 20),
    goldLabelMini: TextStyle(color: Colors.amber, fontSize: 13),
    goldLabelSmall: TextStyle(color: Colors.amber, fontSize: 18),
    goldLabelMedium: TextStyle(color: Colors.amber, fontSize: 25),
    goldLabelLarge: TextStyle(color: Colors.amber, fontSize: 30),
  );
}
