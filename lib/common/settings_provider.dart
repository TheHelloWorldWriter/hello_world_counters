import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_commons.dart';

class SettingsProvider {
  /// Reads the current counter type from persistent storage.
  static Future<CounterType> getCurrentCounterType() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final int counterIndex = prefs.getInt(AppStrings.currentCounterKey) ?? 0;
    return CounterType.values[counterIndex];
  }

  /// Saves the current counter type to persistent storage.
  static Future<void> setCurrentCounterType(CounterType value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.currentCounterKey, value.index);
  }

  /// Saves the value of the specified counter to persistent storage.
  static Future<void> setCounter(CounterType counter, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppStrings.counterKeys[counter], value);
  }

  /// Reads the values of all counters from persistent storage.
  static Future<void> getCounters(Map<CounterType, int> counters) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counters.keys.forEach((counterType) {
      counters[counterType] = prefs.getInt(AppStrings.counterKeys[counterType]) ?? 0;
    });
  }
}
