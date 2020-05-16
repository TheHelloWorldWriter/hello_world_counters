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

  static const String currentCounterKey = 'current_color';

  static const Map<CounterType, String> counterKeys = const {
    CounterType.White: 'white_counter',
    CounterType.Black: 'black_counter',
    CounterType.Grey: 'grey_counter',
    CounterType.Yellow: 'yellow_counter',
    CounterType.Red: 'red_counter',
    CounterType.Blue: 'blue_counter',
    CounterType.Green: 'green_counter',
    CounterType.Brown: 'brown_counter',
    CounterType.Pink: 'pink_counter',
    CounterType.Orange: 'orange_counter',
    CounterType.Purple: 'purple_counter',
  };

  static const String resetConfirm = 'Reset counter to zero?';

  static String shareText(String name, String value) => 'Your $name is $value';

  static const String shareSubject = 'Your new PIN';

  static const String rateAppURL =
      'https://play.google.com/store/apps/details?id=world.helloing.counterswithcolornames';

  static const String helpURL = 'https://helloing.world/counterswithcolornames/';
}
