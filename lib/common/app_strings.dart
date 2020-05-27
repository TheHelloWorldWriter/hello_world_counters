// Copyright 2020 anaurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:counters_with_color_names/screens/home.dart';

/// Application wide UI and URL string constants.
class AppStrings {
  static const String appName = 'Counters With Color Names';

  static const String drawerTitle = 'Counters With Color Names';

  //#region Menu items and functionality

  static const Map<MenuAction, String> menuActions = {
    MenuAction.reset: 'Reset counter',
    MenuAction.share: 'Share...',
    MenuAction.rate: 'Rate app',
    MenuAction.help: 'Help',
  };

  static const String resetConfirm = 'Reset counter to zero?';
  static const String resetConfirmReset = 'Reset';
  static const String resetConfirmCancel = 'Cancel';

  static String shareText(String name, String value) => 'The $name is $value';

  static const String shareSubject = 'Your new PIN';

  static const String rateAppURL =
      'https://play.google.com/store/apps/details?id=world.helloing.counterswithcolornames';

  static const String helpURL = 'https://helloing.world/counterswithcolornames/';

  //#endregion

  //#region Main functionality

  static const String incrementTooltip = 'Increment';
  static const String decrementTooltip = 'Decrement';

//#endregion
}
