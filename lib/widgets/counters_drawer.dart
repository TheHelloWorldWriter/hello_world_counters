// Copyright 2020 anaurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:counters_with_color_names/models/counter.dart';
import 'package:counters_with_color_names/widgets/color_list_tile.dart';
import 'package:flutter/material.dart';

/// A material design drawer that shows navigation links for all available counters.
class CountersDrawer extends StatelessWidget {
  /// Creates a counters drawer widget.
  const CountersDrawer({
    Key key,
    @required this.title,
    this.currentCounter,
    this.onSelected,
  })  : assert(title != null),
        super(key: key);

  /// The title of the drawer displayed in the drawer header.
  final String title;

  /// The current counter type.
  final CounterType currentCounter;

  /// Called when the user taps a drawer list tile.
  final void Function(CounterType value) onSelected;

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
      child: DrawerHeader(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget _buildCounterListTile(CounterType counterType) {
    return ColorListTile(
      color: Counter.colorOf(counterType),
      title: Counter.nameOf(counterType),
      selected: counterType == currentCounter,
      onTap: () {
        if (onSelected != null) onSelected(counterType);
      },
    );
  }
}
