// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'common/theme.dart';
import 'screens/home.dart';

void main() {
  runApp(const CountersWithColorNamesApp());
}

/// The main application widget for Counters with Color Names.
class CountersWithColorNamesApp extends StatelessWidget {
  const CountersWithColorNamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: strings.appName,

      // The app theme for light and dark mode
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),

      // The home screen of the app
      home: const HomeScreen(),
    );
  }
}
