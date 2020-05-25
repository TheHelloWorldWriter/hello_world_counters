import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/models/counter.dart';
import 'package:counterswithcolornames/utils/ui_utils.dart';
import 'package:counterswithcolornames/utils/utils.dart';
import 'package:counterswithcolornames/widgets/counter_display.dart';
import 'package:counterswithcolornames/widgets/counters_drawer.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

/// Overflow menu items enumeration.
enum MenuAction { reset, share, rate, help }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// The AppBar's action needs this key to find its own Scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final Counters _counters = Counters();

  @override
  void initState() {
    super.initState();
    _loadCounters();
  }

  Future<void> _loadCounters() async {
    await _counters.load();
    setState(() {});
  }

  /// Select and display the specified counter when its drawer list tile is tapped.
  void _onDrawerCounterTap(CounterType counterType) {
    setState(() => _counters.currentType = counterType);
    Navigator.pop(context);
  }

  /// Performs the tasks of the popup menu items (reset, share, rate, and help).
  void popupMenuSelection(MenuAction item) {
    switch (item) {
      case MenuAction.reset:
        // Reset the counter after asking for confirmation
        showYesNoDialog(
            context, AppStrings.resetConfirm, () => setState(() => _counters.current.reset()));
        break;
      case MenuAction.share:
        final String name = _counters.current.name;
        final String value = toDecimalString(context, _counters.current.value);
        Share.share(AppStrings.shareText(name, value), subject: name);
        break;
      case MenuAction.rate:
        // Launch the Google Play Store page to allow the user to rate the app
        launchUrl(_scaffoldKey.currentState, AppStrings.rateAppURL);
        break;
      case MenuAction.help:
        // Launch the app online help url
        launchUrl(_scaffoldKey.currentState, AppStrings.helpURL);
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
  Widget _buildAppBar() {
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
            child: Text(AppStrings.menuActions[item]),
            enabled: !(item == MenuAction.reset && _counters.current.value == 0),
          ),
        )
        .toList();
  }

  /// Builds the main drawer that lets the user switch between color counters.
  Widget _buildDrawer() {
    return CountersDrawer(
      title: AppStrings.drawerTitle,
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
          tooltip: AppStrings.decrementTooltip,
          child: const Icon(Icons.remove),
        ),
        isPortrait ? const SizedBox(height: 16.0) : const SizedBox(width: 16.0),
        FloatingActionButton(
          onPressed: () => setState(() => _counters.current.increment()),
          tooltip: AppStrings.incrementTooltip,
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
