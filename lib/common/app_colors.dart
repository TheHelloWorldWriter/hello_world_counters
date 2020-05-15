import 'package:flutter/material.dart';

enum BasicColors { white, black, red, green, yellow, blue, brown, purple, pink, orange, grey }

class AppColors {
  static const Map<BasicColors, Color> basicColorValues = const {
    BasicColors.white: Colors.white,
    BasicColors.black: Colors.black,
    BasicColors.red: Colors.red,
    BasicColors.green: Colors.green,
    BasicColors.yellow: Colors.yellow,
    BasicColors.blue: Colors.blue,
    BasicColors.brown: Colors.brown,
    BasicColors.purple: Colors.purple,
    BasicColors.pink: Colors.pink,
    BasicColors.orange: Colors.orange,
    BasicColors.grey: Colors.grey,
  };
}
