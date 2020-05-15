import 'app_colors.dart';

class AppStrings {
  static const String appName = 'Counters With Color Names';
  static const String drawerTitle = 'Counters With Color Names';

  static const String resetMenuItem = 'Reset counter';
  static const String shareMenuItem = 'Share...';
  static const String rateAppMenuItem = 'Rate app';
  static const String helpMenuItem = 'Help';

  static const String incrementButtonTooltip = 'Increment';
  static const String decrementButtonTooltip = 'Decrement';

  static const Map<CounterColors, String> counterDrawerTitles = const {
    CounterColors.White: 'White Counter',
    CounterColors.Black: 'Black Counter',
    CounterColors.Grey: 'Grey Counter',
    CounterColors.Yellow: 'Yellow Counter',
    CounterColors.Red: 'Red Counter',
    CounterColors.Blue: 'Blue Counter',
    CounterColors.Green: 'Green Counter',
    CounterColors.Brown: 'Brown Counter',
    CounterColors.Pink: 'Pink Counter',
    CounterColors.Orange: 'Orange Counter',
    CounterColors.Purple: 'Purple Counter',
  };

  static const String currentColorKey = 'current_color';

  static const Map<CounterColors, String> counterKeys = const {
    CounterColors.White: 'white_counter',
    CounterColors.Black: 'black_counter',
    CounterColors.Grey: 'grey_counter',
    CounterColors.Yellow: 'yellow_counter',
    CounterColors.Red: 'red_counter',
    CounterColors.Blue: 'blue_counter',
    CounterColors.Green: 'green_counter',
    CounterColors.Brown: 'brown_counter',
    CounterColors.Pink: 'pink_counter',
    CounterColors.Orange: 'orange_counter',
    CounterColors.Purple: 'purple_counter',
  };
}