import 'package:counterswithcolornames/screens/home.dart';

import 'app_colors.dart';

class AppStrings {
  static const String appName = 'Counters With Color Names';
  static const String drawerTitle = 'Counters With Color Names';

//  static const String resetMenuItem = 'Reset counter';
//  static const String shareMenuItem = 'Share...';
//  static const String rateAppMenuItem = 'Rate app';
//  static const String helpMenuItem = 'Help';

  static const Map<MenuAction, String> menuActions = const {
    MenuAction.reset: 'Reset counter',
    MenuAction.share: 'Share...',
    MenuAction.rate: 'Rate app',
    MenuAction.help: 'Help',
  };

  static const String incrementTooltip = 'Increment';
  static const String decrementTooltip = 'Decrement';

  static const Map<BasicColors, String> counterTitles = const {
    BasicColors.white: 'White Counter',
    BasicColors.black: 'Black Counter',
    BasicColors.grey: 'Grey Counter',
    BasicColors.yellow: 'Yellow Counter',
    BasicColors.red: 'Red Counter',
    BasicColors.blue: 'Blue Counter',
    BasicColors.green: 'Green Counter',
    BasicColors.brown: 'Brown Counter',
    BasicColors.pink: 'Pink Counter',
    BasicColors.orange: 'Orange Counter',
    BasicColors.purple: 'Purple Counter',
  };

  static const String currentColorKey = 'current_color';

  static const Map<BasicColors, String> counterKeys = const {
    BasicColors.white: 'white_counter',
    BasicColors.black: 'black_counter',
    BasicColors.grey: 'grey_counter',
    BasicColors.yellow: 'yellow_counter',
    BasicColors.red: 'red_counter',
    BasicColors.blue: 'blue_counter',
    BasicColors.green: 'green_counter',
    BasicColors.brown: 'brown_counter',
    BasicColors.pink: 'pink_counter',
    BasicColors.orange: 'orange_counter',
    BasicColors.purple: 'purple_counter',
  };

  static const String resetConfirm = 'Reset counter to zero?';

  static const String shareSubject = 'Your new PIN';

  static const String rateAppURL =
      'https://play.google.com/store/apps/details?id=world.helloing.counterswithcolornames';

  static const String helpURL = 'https://helloing.world/counterswithcolornames/';
}