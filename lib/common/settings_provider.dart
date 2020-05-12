import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_colors.dart';

class SettingsProvider {
  /// Saves the gestures counter values to persistent storage.
//  static Future<void> setCounters(Map<CounterColors, int> counters) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    counters.forEach((key, value) async {
//      await prefs.setInt(AppStrings.counterKeys[key], value);
//    });
//  }

  static Future<void> setCounter(CounterColors color, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.counterKeys[color], value);
  }

  /// Reads the values of the color counters from persistent storage.
  static Future<void> getCounters(Map<CounterColors, int> counters) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counters.keys.forEach((color) {
      counters[color] = prefs.getInt(AppStrings.counterKeys[color]) ?? 0;
    });
  }
}
