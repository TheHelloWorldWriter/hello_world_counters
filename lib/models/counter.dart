import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum CounterType { White, Black, Red, Green, Yellow, Blue, Brown, Purple, Pink, Orange, Grey }

class Counter {
  Counter(this.type);

  int _value = 0;

  int get value => _value;

  set value(int value) {
    _value = value;
    _saveValue();
  }

  Future<void> _saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.counterKeys[type], value);
  }

  void loadValue(SharedPreferences prefs) {
    value = prefs.getInt(AppStrings.counterKeys[type]) ?? 0;
  }

  final CounterType type;

//  String get name => AppStrings.counterNames[type];
  String get name => nameOf(type);

  Color get color => _counterColors[type];

//  String toString() =>

  static Color colorOf(CounterType counterType) => _counterColors[counterType];

  static String nameOf(CounterType counterType) => '${describeEnum(counterType)} Counter';

  static const Map<CounterType, Color> _counterColors = const {
    CounterType.White: Colors.white,
    CounterType.Black: Colors.black,
    CounterType.Red: Colors.red,
    CounterType.Green: Colors.green,
    CounterType.Yellow: Colors.yellow,
    CounterType.Blue: Colors.blue,
    CounterType.Brown: Colors.brown,
    CounterType.Purple: Colors.purple,
    CounterType.Pink: Colors.pink,
    CounterType.Orange: Colors.orange,
    CounterType.Grey: Colors.grey,
  };
}

class Counters {
  Map<CounterType, Counter> _counters = Map<CounterType, Counter>();

  CounterType _currentType = CounterType.White;

  Counter get current => _counters[_currentType];

  set currentType(CounterType type) {
    _currentType = type;
    _saveCurrentType();
  }

  Future<void> _saveCurrentType() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.currentCounterKey, _currentType.index);
  }

  Counters() {
    CounterType.values.forEach((type) => _counters[type] = Counter(type));
  }

  /// Loads counter states from persistent storage.
  Future<void> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    /// Load the current counter type
    final int counterIndex = prefs.getInt(AppStrings.currentCounterKey) ?? 0;
    _currentType = CounterType.values[counterIndex];

    /// Loads the values of all counters
    _counters.keys.forEach((counterType) {
      _counters[counterType].loadValue(prefs);
    });
  }
}
