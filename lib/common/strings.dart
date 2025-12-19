// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

/// App wide UI string constants.
library;

import '../screens/home_screen.dart';

const String appName = 'Hello World Counters';

// -----------------------------------------------------------------------------
// App Drawer
// -----------------------------------------------------------------------------

const String drawerTitle = appName;
const String settingsItemTitle = 'Settings';
const String aboutItemTitle = 'About this Hello World app';
const String starAppItemTitle = 'Star on GitHub';
const String rateAppItemTitle = 'Rate app';

const Map<MenuAction, String> menuActions = {
  MenuAction.reset: 'Reset counter',
  MenuAction.share: 'Share...',
};

const String resetConfirm = 'Reset counter to zero?';
const String resetConfirmReset = 'Reset';
const String resetConfirmCancel = 'Cancel';

String shareText(String name, String value) => 'The $name is $value';

// -----------------------------------------------------------------------------
// Home Screen - Main
// -----------------------------------------------------------------------------

const String incrementTooltip = 'Increment';
const String decrementTooltip = 'Decrement';

// -----------------------------------------------------------------------------
// Inspiration Screen
// -----------------------------------------------------------------------------

String inspirationScreenTitle(String name) => '$name Inspiration';
const String inspirationHeader = 'Running out of ideas? Try counting these:';
String noInspirationTitle(String name) => 'No inspiration ideas yet for $name.';
const String noInspirationSubtitle = 'Use this counter for anything you\'d like!';
const String ideaCopied = 'Idea copied to clipboard!';
const String ideaCopyTooltip = 'Tap to copy idea';

// -----------------------------------------------------------------------------
// Settings Screen
// -----------------------------------------------------------------------------

const String settingsTitle = 'Settings';
const String counterTapModeTitle = 'Counter tap mode';
const String counterTapModeSubtitle = 'Tap anywhere to increase counter';
