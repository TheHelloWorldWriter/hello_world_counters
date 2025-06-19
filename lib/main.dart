// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

import 'package:flutter/material.dart';

import 'common/app_strings.dart';
import 'common/theme.dart';
import 'screens/home.dart';

void main() {
  runApp(const CountersWithColorNamesApp());
}

/// The app widget.
class CountersWithColorNamesApp extends StatelessWidget {
  const CountersWithColorNamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,

      // The app theme for light and dark mode
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),

      home: const HomeScreen(),
    );
  }
}
