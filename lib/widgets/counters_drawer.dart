// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

import 'package:flutter/material.dart';

import '../models/counter.dart';
import 'color_list_tile.dart';

/// A material design drawer that shows navigation links for all available counters.
class CountersDrawer extends StatelessWidget {
  /// Creates a counters drawer widget.
  const CountersDrawer({
    super.key,
    required this.title,
    required this.currentCounter,
    this.onSelected,
  });

  /// The title of the drawer displayed in the drawer header.
  final String title;

  /// The current counter type.
  final CounterType currentCounter;

  /// Called when the user taps a drawer list tile.
  final void Function(CounterType value)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildDrawerHeader(context),
          ...CounterType.values.map(_buildCounterListTile),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 8.0,
      child: DrawerHeader(child: Text(title, style: Theme.of(context).textTheme.titleLarge)),
    );
  }

  Widget _buildCounterListTile(CounterType counterType) {
    return ColorListTile(
      color: Counter.colorOf(counterType),
      title: Counter.nameOf(counterType),
      selected: counterType == currentCounter,
      onTap: () => onSelected?.call(counterType),
    );
  }
}
