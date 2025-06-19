// Copyright 2020-2025 Appliberated. All rights reserved.
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://www.appliberated.com/counterswithcolornames/license/.

import 'package:flutter/material.dart';

import 'package:share_plus/share_plus.dart';

import '../common/strings.dart' as strings;
import '../common/types.dart';
import '../common/urls.dart' as urls;
import '../models/counter.dart';
import '../utils/utils.dart' as utils;
import '../widgets/accept_cancel_dialog.dart';
import '../widgets/counter_display.dart';
import '../widgets/counters_drawer.dart';

/// The app home screen widget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// The logic and internal state for the app home screen widget.
class _HomeScreenState extends State<HomeScreen> {
  /// The AppBar's action needs this key to find its own Scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  /// The map of counters for each counter type.
  final Counters _counters = Counters();

  @override
  void initState() {
    super.initState();
    _loadCounters();
  }

  /// Loads counter values from persistent storage.
  Future<void> _loadCounters() async {
    await _counters.load();
    setState(() {});
  }

  /// Select and display the specified counter when its drawer list tile is tapped.
  void _onDrawerCounterTap(CounterType counterType) {
    setState(() => _counters.currentType = counterType);
    Navigator.pop(context);
  }

  /// Performs the tasks of the popup menu items (reset, share, star, and help).
  void popupMenuSelection(MenuAction item) {
    switch (item) {
      case MenuAction.reset:
        // Reset the counter after asking for confirmation.
        showAcceptCancelDialog(
          context,
          strings.resetConfirm,
          strings.resetConfirmReset,
          strings.resetConfirmCancel,
          () => setState(() => _counters.current.reset()),
        );
        break;
      case MenuAction.share:
        // Share the current counter value using the platform's share sheet.
        final String name = _counters.current.name;
        final String value = utils.toDecimalString(context, _counters.current.value);
        SharePlus.instance.share(
          ShareParams(text: strings.shareText(name, value), subject: name),
        );
        break;
      case MenuAction.star:
        // Launch the app GitHub page to allow the user to star the app
        utils.launchUrlExternal(context, urls.starAppURL);
        break;
      case MenuAction.help:
        // Launch the app online help url
        utils.launchUrlExternal(context, urls.helpURL);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isPortrait = MediaQuery.of(context).size.height >= 500;

    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: CounterDisplay(
        value: _counters.current.value,
        color: _counters.current.color,
        isPortrait: isPortrait,
      ),
      floatingActionButton: _buildFABs(isPortrait),
    );
  }

  /// Builds the app bar with the popup menu items.
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(_counters.current.name),
      actions: <Widget>[
        PopupMenuButton<MenuAction>(
          onSelected: popupMenuSelection,
          itemBuilder: _buildMenuItems,
        ),
      ],
    );
  }

  /// Builds the popup menu items for the app bar.
  List<PopupMenuItem<MenuAction>> _buildMenuItems(BuildContext context) {
    return MenuAction.values
        .map(
          (item) => PopupMenuItem<MenuAction>(
            value: item,
            enabled: !(item == MenuAction.reset && _counters.current.value == 0),
            child: Text(strings.menuActions[item]!),
          ),
        )
        .toList();
  }

  /// Builds the main drawer that lets the user switch between color counters.
  Widget _buildDrawer() {
    return CountersDrawer(
      title: strings.drawerTitle,
      currentCounter: _counters.current.type,
      onSelected: _onDrawerCounterTap,
    );
  }

  /// Builds the two main floating action buttons for increment and decrement.
  Widget _buildFABs(bool isPortrait) {
    return Flex(
      direction: isPortrait ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => setState(() => _counters.current.decrement()),
          tooltip: strings.decrementTooltip,
          child: const Icon(Icons.remove),
        ),
        isPortrait ? const SizedBox(height: 16.0) : const SizedBox(width: 16.0),
        FloatingActionButton(
          onPressed: () => setState(() => _counters.current.increment()),
          tooltip: strings.incrementTooltip,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
