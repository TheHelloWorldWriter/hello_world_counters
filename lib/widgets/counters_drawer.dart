// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../models/counter.dart';
import '../utils/utils.dart';
import 'color_list_tile.dart';

/// Drawer extra actions enumeration.
enum DrawerExtraActions { settings, about, starApp, rateApp }

/// A material design drawer that shows navigation links for all available counters.
class CountersDrawer extends StatelessWidget {
  /// Creates a counters drawer widget.
  const CountersDrawer({
    super.key,
    required this.title,
    required this.counters,
    required this.onSelected,
    this.onExtraSelected,
  });

  /// The title of the drawer displayed in the drawer header.
  final String title;

  /// The map of counters.
  final Counters counters;

  /// Called when the user taps a drawer list tile.
  final void Function(CounterType value) onSelected;

  /// Called when the user taps a drawer list tile.
  final void Function(DrawerExtraActions value)? onExtraSelected;

  void _onExtraActionTap(BuildContext context, DrawerExtraActions action) {
    Navigator.pop(context);
    onExtraSelected?.call(action);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListTileTheme(
        selectedColor: Colors.black,
        child: ListView(
          children: <Widget>[
            // The drawer header with just the drawer title
            _DrawerHeader(title: title),

            // The counter list tiles
            ...CounterType.values.map(
              (type) => ColorListTile(
                color: Counter.colorOf(type),
                title: Counter.nameOf(type),
                subtitle: toDecimalString(context, counters[type].value),
                selected: type == counters.current.type,
                onTap: () => onSelected(type),
              ),
            ),

            const Divider(),

            // The Settings drawer item
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(strings.settingsItemTitle),
              onTap: () => _onExtraActionTap(context, DrawerExtraActions.settings),
            ),

            // The About drawer item
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(strings.aboutItemTitle),
              onTap: () => _onExtraActionTap(context, DrawerExtraActions.about),
            ),

            // The Star App drawer item
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text(strings.starAppItemTitle),
              onTap: () => _onExtraActionTap(context, DrawerExtraActions.starApp),
            ),

            const Divider(),

            // The Rate App drawer item
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text(strings.rateAppItemTitle),
              onTap: () => _onExtraActionTap(context, DrawerExtraActions.rateApp),
            ),
          ],
        ),
      ),
    );
  }
}

/// The drawer header widget that simply displays the drawer title.
class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    // ignore: unused_element_parameter
    super.key,
    required this.title,
  });

  /// The title of the drawer.
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 8.0,
      child: DrawerHeader(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
