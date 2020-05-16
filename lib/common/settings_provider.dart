import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_commons.dart';

class SettingsProvider {
  /// Saves the gestures counter values to persistent storage.
//  static Future<void> setCounters(Map<CounterColors, int> counters) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    counters.forEach((key, value) async {
//      await prefs.setInt(AppStrings.counterKeys[key], value);
//    });
//  }


  static Future<CounterType> getCurrentColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final int colorIndex = prefs.getInt(AppStrings.currentColorKey) ?? 0;
    return CounterType.values[colorIndex];
  }

  static Future<void> setCurrentColor(CounterType value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.currentColorKey, value.index);
  }

  static Future<void> setCounter(CounterType color, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.counterKeys[color], value);
  }

  /// Reads the values of the color counters from persistent storage.
  static Future<void> getCounters(Map<CounterType, int> counters) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counters.keys.forEach((color) {
      counters[color] = prefs.getInt(AppStrings.counterKeys[color]) ?? 0;
    });
  }
}
