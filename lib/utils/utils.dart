// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

/// Formats [number] as a decimal, inserting locale-appropriate thousands separators as necessary.
String toDecimalString(BuildContext context, int number) {
  final MaterialLocalizations localizations = MaterialLocalizations.of(context);
  return localizations.formatDecimal(number);
}

/// Shows a [SnackBar] with the specified [text] at the bottom of the specified scaffold.
///
/// To display the SnackBar, either a [context] or a [messenger] must be specified.
void showSnackBar(
  String text, {
  BuildContext? context,
  ScaffoldMessengerState? messenger,
  Duration duration = const Duration(seconds: 4),
}) {
  if (context == null && messenger == null) {
    throw ArgumentError('Either context or scaffoldMessenger must be specified');
  }

  final SnackBar snackBar = SnackBar(content: Text(text), duration: duration);
  (messenger ?? ScaffoldMessenger.of(context!))
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}

/// Launches the specified [URL] in the mobile platform, using the default external application.
Future<void> launchUrlExternal(BuildContext context, String url) async {
  await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}

/// Returns the contrast color for the specified [color].
Color contrastOfColor(Color color) {
  return ThemeData.estimateBrightnessForColor(color) == Brightness.light
      ? Colors.black
      : Colors.white;
}
