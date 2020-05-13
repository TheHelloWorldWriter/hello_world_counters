import 'package:counterswithcolornames/common/app_colors.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/common/settings_provider.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/widgets/list_tile_selected_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Overflow menu items enumeration.
enum OverflowMenuItem { reset, settings, rate, help }

enum CounterChange { increment, decrement, reset, undoReset }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// The AppBar's action needs this key to find its own Scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  CounterColors _currentColor = CounterColors.White;

  /// The current counter values for each color
  Map<CounterColors, int> _counters = Map<CounterColors, int>();

  int _undoableCounterValue = 0;

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
    _currentColor = await SettingsProvider.getCurrentColor();
    setState(() {});
  }

  Widget _colorAvatar(Color color, bool addBorder) {
    Widget colorAvatar = CircleAvatar(
      backgroundColor: color,
    );
    return addBorder
        ? CircleAvatar(
            radius: 21,
            backgroundColor: Colors.black,
            child: colorAvatar,
          )
        : colorAvatar;
  }

  Widget drawerListTile(CounterColors color) => ListTileSelectedBox(
        color: AppColors.counterColorValues[color].withOpacity(0.1),
        listTile: ListTile(
          selected: color == _currentColor,
          leading: _colorAvatar(AppColors.counterColorValues[color], color == CounterColors.White),
//          CircleAvatar(
//            backgroundColor: AppColors.counterColorValues[color],
//          ),
          title: Text(
            AppStrings.counterDrawerTitles[color],
            style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
          ),
          onTap: () {
            setState(() {
              _currentColor = color;
            });
            SettingsProvider.setCurrentColor(_currentColor);

            Navigator.pop(context);
          },
        ),
      );

  /// Performs the tasks of the overflow menu items.
  void popupMenuSelection(OverflowMenuItem item) {
    switch (item) {
      case OverflowMenuItem.reset:
        showDialog<void>(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Reset counter?'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('Yes'),
                      onPressed: () {
                        _changeCounter(CounterChange.reset);
                      },
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: const Text(
                        'No',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ));

//        _changeCounter(CounterChange.reset);
//        final snackBar = SnackBar(
//          content: Text('Counter has been reset'),
//          action: SnackBarAction(
//            label: 'Undo',
//            onPressed: () {
//              _changeCounter(CounterChange.undoReset);
//            },
//          ),
//        );
//        _scaffoldKey.currentState.showSnackBar(snackBar);
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

  void _changeCounter(CounterChange change) {
    setState(() {
      switch (change) {
        case CounterChange.increment:
          _counters[_currentColor] += 1;
          break;
        case CounterChange.decrement:
          _counters[_currentColor] -= 1;
          break;
        case CounterChange.reset:
          _undoableCounterValue = _counters[_currentColor];
          _counters[_currentColor] = 0;
          break;
        case CounterChange.undoReset:
          if (_undoableCounterValue != 0) {
            _counters[_currentColor] = _undoableCounterValue;
            _undoableCounterValue = 0;
          }
          break;
      }
    });
    SettingsProvider.setCounter(_currentColor, _counters[_currentColor]);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
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
                enabled: _counters[_currentColor] != 0,
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
//            UserAccountsDrawerHeader(
//              accountName: Text(AppStrings.drawerTitle),
//              accountEmail: Text(AppStrings.drawerTitle),
//            ),

            SizedBox(
              height: kToolbarHeight + 8.0,
              child: DrawerHeader(
                child: Text(
                  AppStrings.drawerTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.white54,
            onPressed: () => _changeCounter(CounterChange.decrement),
            tooltip: AppStrings.decrementButtonTooltip,
            child: const Icon(Icons.remove),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () => _changeCounter(CounterChange.increment),
            tooltip: AppStrings.incrementButtonTooltip,
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
