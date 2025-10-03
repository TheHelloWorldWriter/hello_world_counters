// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.thehelloworldwriter.com/helloworldcounters/license/.

/// Application wide theme configuration.
library;

import 'package:flutter/material.dart';

/// Returns the app theme based on the brightness.
ThemeData getAppTheme(Brightness brightness) {
  return brightness == Brightness.light ? _getLightTheme() : _getDarkTheme();
}

/// Returns the light theme.
ThemeData _getLightTheme() {
  return ThemeData.from(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.black,
    ),
  ).copyWith(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.black),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
    ),
  );
}

/// Returns the dark theme.
ThemeData _getDarkTheme() {
  return ThemeData.from(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.white,
    ),
  ).copyWith(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[800],
    ),
  );
}
