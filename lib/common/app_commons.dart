import 'package:flutter/material.dart';

enum CounterType { white, black, red, green, yellow, blue, brown, purple, pink, orange, grey }

class AppColors {
  static const Map<CounterType, Color> basicColorValues = const {
    CounterType.white: Colors.white,
    CounterType.black: Colors.black,
    CounterType.red: Colors.red,
    CounterType.green: Colors.green,
    CounterType.yellow: Colors.yellow,
    CounterType.blue: Colors.blue,
    CounterType.brown: Colors.brown,
    CounterType.purple: Colors.purple,
    CounterType.pink: Colors.pink,
    CounterType.orange: Colors.orange,
    CounterType.grey: Colors.grey,
  };
}
