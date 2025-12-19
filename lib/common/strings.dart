// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

/// App wide UI string constants.
library;

import '../screens/home_screen.dart';

const appName = 'Hello World Counters';

// -----------------------------------------------------------------------------
// App Drawer
// -----------------------------------------------------------------------------

const String drawerTitle = appName;
const settingsItemTitle = 'Settings';
const aboutItemTitle = 'About this Hello World app';
const starAppItemTitle = 'Star on GitHub';
const rateAppItemTitle = 'Rate app';

const Map<MenuAction, String> menuActions = {
  MenuAction.reset: 'Reset counter',
  MenuAction.share: 'Share...',
};

const resetConfirm = 'Reset counter to zero?';
const resetConfirmReset = 'Reset';
const resetConfirmCancel = 'Cancel';

String shareText(String name, String value) => 'The $name is $value';

// -----------------------------------------------------------------------------
// Home Screen - Main
// -----------------------------------------------------------------------------

const incrementTooltip = 'Increment';
const decrementTooltip = 'Decrement';

// -----------------------------------------------------------------------------
// Inspiration Screen
// -----------------------------------------------------------------------------

String inspirationScreenTitle(String name) => '$name Inspiration';
const inspirationHeader = 'Running out of ideas? Try counting these:';
String noInspirationTitle(String name) => 'No inspiration ideas yet for $name.';
const noInspirationSubtitle = 'Use this counter for anything you\'d like!';
const ideaCopied = 'Idea copied to clipboard!';
const ideaCopyTooltip = 'Tap to copy idea';

// -----------------------------------------------------------------------------
// Settings Screen
// -----------------------------------------------------------------------------

const settingsTitle = 'Settings';
const counterTapModeTitle = 'Counter tap mode';
const counterTapModeSubtitle = 'Tap anywhere to increase counter';
