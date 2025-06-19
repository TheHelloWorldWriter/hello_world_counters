// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

/// Application wide UI string constants.
library;

import 'types.dart';

const String appName = 'Counters With Color Names';

const String drawerTitle = 'Counters With Color Names';

const Map<MenuAction, String> menuActions = {
  MenuAction.reset: 'Reset counter',
  MenuAction.share: 'Share...',
  MenuAction.star: 'Star app',
  MenuAction.help: 'Help',
};

const String resetConfirm = 'Reset counter to zero?';
const String resetConfirmReset = 'Reset';
const String resetConfirmCancel = 'Cancel';

String shareText(String name, String value) => 'The $name is $value';

const String incrementTooltip = 'Increment';
const String decrementTooltip = 'Decrement';
