import 'package:counterswithcolornames/common/app_commons.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/common/settings_provider.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/utils/ui_utils.dart';
import 'package:counterswithcolornames/utils/utils.dart';
import 'package:counterswithcolornames/widgets/color_list_tile.dart';
import 'package:counterswithcolornames/widgets/slim_drawer_header.dart';
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

  CounterType _currentCounter = CounterType.white;

  /// The current counter values for each color
  Map<CounterType, int> _counters = Map<CounterType, int>();

  _HomeScreenState() {
    // Init counters to 0
    CounterType.values.forEach((color) => _counters[color] = 0);
  }

  @override
  void initState() {
    super.initState();
    _initCounters();
  }

  Future<void> _initCounters() async {
    await SettingsProvider.getCounters(_counters);
    _currentCounter = await SettingsProvider.getCurrentColor();
    setState(() {});
  }

  /// Performs the tasks of the overflow menu items.
  void popupMenuSelection(MenuAction item) {
    switch (item) {
      case MenuAction.reset:
        // Reset the counter after asking for confirmation
        showYesNoDialog(context, AppStrings.resetConfirm, () => _changeCounter((value) => 0));
        break;
      case MenuAction.share:
        Share.share(
          'Your ${AppStrings.counterNames[_currentCounter]} is ${_counters[_currentCounter]}',
//            subject: Strings.shareSubject);
        );
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

  /// Update the current color counter using the [change] function parameter
  /// (e.g. increment, decrement, reset), and notify the framework.
  void _changeCounter(Function(int) change) {
    setState(() {
      _counters[_currentCounter] = change(_counters[_currentCounter]);
    });
    SettingsProvider.setCounter(_currentCounter, _counters[_currentCounter]);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: Container(
        alignment: Alignment.center,
        color: AppColors.basicColorValues[_currentCounter],
        child: Text(
          localizations.formatDecimal(_counters[_currentCounter]),
          style: Theme.of(context).textTheme.headline1.copyWith(
                color: AppColors.basicColorValues[_currentCounter].contrastOf(),
              ),
        ),
      ),
      floatingActionButton: _buildFABs(),
    );
  }

  /// Builds the app bar with the popup menu items.
  Widget _buildAppBar() {
    return AppBar(
      title: Text(AppStrings.counterNames[_currentCounter]),
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
            enabled: !(item == MenuAction.reset && _counters[_currentCounter] == 0),
          ),
        )
        .toList();
  }

  /// Builds the main drawer that lets the user switch between color counters.
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SlimDrawerHeader(title: AppStrings.drawerTitle),
          ...CounterType.values.map(_drawerListTile),
        ],
      ),
    );
  }

  /// Builds a drawer list tile for the specified color counter.
  Widget _drawerListTile(CounterType color) {
    return ColorListTile(
      color: AppColors.basicColorValues[color],
      titleData: AppStrings.counterNames[color],
      selected: color == _currentCounter,
      onTap: () {
        setState(() {
          _currentCounter = color;
        });
        SettingsProvider.setCurrentColor(_currentCounter);

        Navigator.pop(context);
      },
    );
  }

  /// Builds the two main floating action buttons for increment and decrement.
  Widget _buildFABs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          backgroundColor: Colors.white54,
          onPressed: () => _changeCounter((value) => value - 1),
          tooltip: AppStrings.decrementTooltip,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(height: 16.0),
        FloatingActionButton(
          onPressed: () => _changeCounter((value) => value + 1),
          tooltip: AppStrings.incrementTooltip,
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
