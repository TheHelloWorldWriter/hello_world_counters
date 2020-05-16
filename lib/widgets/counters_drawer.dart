import 'package:counterswithcolornames/common/app_commons.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:flutter/material.dart';

import 'color_list_tile.dart';

class CountersDrawer extends StatelessWidget {
  const CountersDrawer({
    Key key,
    @required this.title,
    this.currentCounter,
    this.onSelected,
  })  : assert(title != null),
        super(key: key);

  /// The title of the drawer displayed in the drawer header.
  final String title;

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
      height: kToolbarHeight + 58.0,
      child: DrawerHeader(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget _buildCounterListTile(CounterType counterType) {
    return ColorListTile<CounterType>(
      value: counterType,
      color: AppColors.basicColorValues[counterType],
      title: AppStrings.counterNames[counterType],
      selected: counterType == currentCounter,
      onTap: () {
        if (onSelected != null) onSelected(counterType);
      },
    );
  }
}
