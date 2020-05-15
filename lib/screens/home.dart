import 'package:counterswithcolornames/common/app_colors.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/common/settings_provider.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/utils/ui_utils.dart';
import 'package:counterswithcolornames/widgets/color_list_tile.dart';
import 'package:counterswithcolornames/widgets/slim_drawer_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Overflow menu items enumeration.
enum MenuAction { reset, share, rate, help }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// The AppBar's action needs this key to find its own Scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  BasicColors _currentBasicColor = BasicColors.white;

  /// The current counter values for each color
  Map<BasicColors, int> _counters = Map<BasicColors, int>();

  _HomeScreenState() {
    // Init counters to 0
    BasicColors.values.forEach((color) => _counters[color] = 0);
  }

  @override
  void initState() {
    super.initState();
    _initCounters();
  }

  Future<void> _initCounters() async {
    await SettingsProvider.getCounters(_counters);
    _currentBasicColor = await SettingsProvider.getCurrentColor();
    setState(() {});
  }

  Widget _drawerListTile(BasicColors color) {
    return ColorListTile(
      color: AppColors.basicColorValues[color],
      titleData: AppStrings.counterDrawerTitles[color],
      selected: color == _currentBasicColor,
      onTap: () {
        setState(() {
          _currentBasicColor = color;
        });
        SettingsProvider.setCurrentColor(_currentBasicColor);

        Navigator.pop(context);
      },
    );
  }

  /// Performs the tasks of the overflow menu items.
  void popupMenuSelection(MenuAction item) {
    switch (item) {
      case MenuAction.reset:
        // Reset the counter after asking for confirmation
        showYesNoDialog(context, AppStrings.resetConfirm, () => _changeCounter((value) => 0));
        break;
      case MenuAction.share:
        // Navigate to the Settings screen, and load settings and refresh on return
//        loadSettingsScreen();
        break;
      case MenuAction.rate:
        // Launch the Google Play Store page to allow the user to rate the app
//        launchUrl(_scaffoldKey.currentState, Strings.rateAppURL);
        break;
      case MenuAction.help:
        // Launch the app online help url
//        launchUrl(_scaffoldKey.currentState, Strings.helpURL);
        break;
    }
  }

  /// Update the current color counter using the [change] function parameter,
  /// and notify the framework.
  ///
  /// This method is currently called with [change] functions that decrement,
  /// increment or reset the counter.
  void _changeCounter(Function(int) change) {
    setState(() {
      _counters[_currentBasicColor] = change(_counters[_currentBasicColor]);
    });
    SettingsProvider.setCounter(_currentBasicColor, _counters[_currentBasicColor]);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(AppStrings.counterDrawerTitles[_currentBasicColor]),
        actions: <Widget>[
          PopupMenuButton<MenuAction>(
            onSelected: popupMenuSelection,
            itemBuilder: _buildMenuItems,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SlimDrawerHeader(title: AppStrings.drawerTitle),
            ...BasicColors.values.map(_drawerListTile),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: AppColors.basicColorValues[_currentBasicColor],
        child: Text(
          localizations.formatDecimal(_counters[_currentBasicColor]),
          style: Theme.of(context).textTheme.headline1.copyWith(
                color: AppColors.basicColorValues[_currentBasicColor].contrastOf(),
              ),
        ),
      ),
      floatingActionButton: Column(
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
      ),
    );
  }

  List<PopupMenuItem<MenuAction>> _buildMenuItems(BuildContext context) {
    return MenuAction.values
        .map(
          (item) => PopupMenuItem<MenuAction>(
            value: item,
            child: Text(AppStrings.menuActions[item]),
            enabled: !(item == MenuAction.reset && _counters[_currentBasicColor] == 0),
          ),
        )
        .toList();
  }
}
