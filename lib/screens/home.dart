import 'package:counterswithcolornames/common/app_colors.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/common/settings_provider.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:flutter/material.dart';

/// Overflow menu items enumeration.
enum OverflowMenuItem { reset, settings, rate, help }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterColors _currentColor = CounterColors.White;

  /// The current counter values for each color
  Map<CounterColors, int> _counters = Map<CounterColors, int>();

  _HomeScreenState() {
    // Init counters to 0
    CounterColors.values.forEach((color) => _counters[color] = 0);
  }

  @override
  void initState() {
    super.initState();
    _initCounters();
  }

  Future<void> _initCounters() async {
    await SettingsProvider.getCounters(_counters);
    setState(() {});
  }

  Widget drawerListTile(CounterColors color) => ListTile(
        title: Text(AppStrings.counterDrawerTitles[color]),
        onTap: () {
          setState(() {
            _currentColor = color;
          });

          Navigator.pop(context);
        },
      );

  /// Performs the tasks of the overflow menu items.
  void popupMenuSelection(OverflowMenuItem item) {
    switch (item) {
      case OverflowMenuItem.reset:
//        setState(() {
//          _listItemStyle.reset();
//        });
        break;
      case OverflowMenuItem.settings:
        // Navigate to the Settings screen, and load settings and refresh on return
//        loadSettingsScreen();
        break;
      case OverflowMenuItem.rate:
        // Launch the Google Play Store page to allow the user to rate the app
//        launchUrl(_scaffoldKey.currentState, Strings.rateAppURL);
        break;
      case OverflowMenuItem.help:
        // Launch the app online help url
//        launchUrl(_scaffoldKey.currentState, Strings.helpURL);
        break;
    }
  }

  void _incrementCounter() {
    setState(() {
      _counters[_currentColor]++;
    });
    SettingsProvider.setCounter(_currentColor, _counters[_currentColor]);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
//        backgroundColor: AppColors.counterColorValues[_currentColor],
//        title: Text(AppStrings.appName),
        title: Text(AppStrings.counterDrawerTitles[_currentColor]),
        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.minimize),
//            onPressed: () {},
//          ),
          PopupMenuButton<OverflowMenuItem>(
            onSelected: popupMenuSelection,
            itemBuilder: (_) => [
              PopupMenuItem(
                value: OverflowMenuItem.reset,
                child: Text(AppStrings.resetMenuItem),
              ),
              PopupMenuItem(
                value: OverflowMenuItem.settings,
                child: Text(AppStrings.settingsMenuItem),
              ),
              PopupMenuItem(
                value: OverflowMenuItem.rate,
                child: Text(AppStrings.rateAppMenuItem),
              ),
              PopupMenuItem(
                value: OverflowMenuItem.help,
                child: Text(AppStrings.helpMenuItem),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(AppStrings.drawerTitle),
            ),
            ...CounterColors.values.map(drawerListTile),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: AppColors.counterColorValues[_currentColor],
        child: Text(
          localizations.formatDecimal(_counters[_currentColor]),
          style: Theme.of(context)
              .textTheme
              .headline1
              .copyWith(color: AppColors.counterColorValues[_currentColor].contrastOf()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: AppStrings.incrementButtonTooltip,
        child: Icon(Icons.add),
      ),
    );
  }
}
