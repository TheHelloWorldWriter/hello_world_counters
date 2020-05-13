import 'package:flutter/material.dart';

//enum CounterColors { White, Black, Grey, Yellow, Red, Blue, Green, Brown, Pink, Orange, Purple }
enum CounterColors { White, Black, Red, Green, Yellow, Blue, Brown, Purple, Pink, Orange, Grey }

class AppColors {
  static const Map<CounterColors, Color> counterColorValues = const {
    CounterColors.White: Colors.white,
    CounterColors.Black: Colors.black,
    CounterColors.Grey: Colors.grey,
    CounterColors.Yellow: Colors.yellow,
    CounterColors.Red: Colors.red,
    CounterColors.Blue: Colors.blue,
    CounterColors.Green: Colors.green,
    CounterColors.Brown: Colors.brown,
    CounterColors.Pink: Colors.pink,
    CounterColors.Orange: Colors.orange,
    CounterColors.Purple: Colors.purple,
  };
}
