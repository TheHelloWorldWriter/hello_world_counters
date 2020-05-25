import 'package:counterswithcolornames/models/counter.dart';
import 'package:counterswithcolornames/screens/home.dart';

class AppStrings {
  static const String appName = 'Counters With Color Names';
  static const String drawerTitle = 'Counters With Color Names';

  static const Map<MenuAction, String> menuActions = const {
    MenuAction.reset: 'Reset counter',
    MenuAction.share: 'Share...',
    MenuAction.rate: 'Rate app',
    MenuAction.help: 'Help',
  };

  static const String incrementTooltip = 'Increment';
  static const String decrementTooltip = 'Decrement';

//  static const String currentCounterKey = 'current_color';

//  static const Map<CounterType, String> counterKeys = const {
//    CounterType.white: 'white_counter',
//    CounterType.black: 'black_counter',
//    CounterType.grey: 'grey_counter',
//    CounterType.yellow: 'yellow_counter',
//    CounterType.red: 'red_counter',
//    CounterType.blue: 'blue_counter',
//    CounterType.green: 'green_counter',
//    CounterType.brown: 'brown_counter',
//    CounterType.pink: 'pink_counter',
//    CounterType.orange: 'orange_counter',
//    CounterType.purple: 'purple_counter',
//  };

  static const String resetConfirm = 'Reset counter to zero?';

  static String shareText(String name, String value) => 'The $name is $value';

  static const String shareSubject = 'Your new PIN';

  static const String rateAppURL =
      'https://play.google.com/store/apps/details?id=world.helloing.counterswithcolornames';

  static const String helpURL = 'https://helloing.world/counterswithcolornames/';
}
