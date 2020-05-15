import 'package:counterswithcolornames/common/app_colors.dart';
import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/common/settings_provider.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/widgets/color_filled_circle.dart';
import 'package:counterswithcolornames/widgets/color_list_tile.dart';
import 'package:counterswithcolornames/widgets/list_tile_selected_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Overflow menu items enumeration.
enum OverflowMenuItem { reset, share, rate, help }

enum CounterChange { increment, decrement, reset }

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

  Widget drawerListTile2(CounterColors color) => ListTileSelectedBox(
        color: AppColors.counterColorValues[color].withOpacity(0.1),
//        color: AppColors.counterColorValues[color].withOpacity(0.2),
//        color: color == CounterColors.White
//            ? Colors.black12
//            : AppColors.counterColorValues[color].withOpacity(0.1),
        listTile: ListTile(
          selected: color == _currentColor,
          leading: ColorFilledCircle(
            color: AppColors.counterColorValues[color],
            border: color == CounterColors.White ? Border.all() : null,
          ),
          title: Text(
            AppStrings.counterDrawerTitles[color],
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontWeight: color == _currentColor ? FontWeight.w900 : null,
            ),
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

  Widget drawerListTile3(CounterColors color) => ListTile(

        selected: color == _currentColor,
        leading: ColorFilledCircle(
          color: AppColors.counterColorValues[color],
          border: color == CounterColors.White ? Border.all() : null,
        ),
        title: Text(
          AppStrings.counterDrawerTitles[color],
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontWeight: color == _currentColor ? FontWeight.w900 : null,
            fontSize: color == _currentColor
                ? Theme.of(context).textTheme.subtitle1.fontSize
                : Theme.of(context).textTheme.bodyText1.fontSize,
          ),
        ),
        onTap: () {
          setState(() {
            _currentColor = color;
          });
          SettingsProvider.setCurrentColor(_currentColor);

          Navigator.pop(context);
        },
      );

  Widget drawerListTile(CounterColors color) => ColorListTile(
    color: AppColors.counterColorValues[color],
    titleData: AppStrings.counterDrawerTitles[color],
    selected: color == _currentColor,
    onTap: () {
      setState(() {
        _currentColor = color;
      });
      SettingsProvider.setCurrentColor(_currentColor);

      Navigator.pop(context);
    },
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
//                        _changeCounter(CounterChange.reset);
                        _changeCounter((value) => 0);
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
        break;
      case OverflowMenuItem.share:
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

  /// Update the current color counter using the [change] function parameter,
  /// and notify the framework.
  ///
  /// This method is currently called with [change] functions that decrement,
  /// increment or reset the counter.
  void _changeCounter(Function(int) change) {
    setState(() {
      _counters[_currentColor] = change(_counters[_currentColor]);
    });
    SettingsProvider.setCounter(_currentColor, _counters[_currentColor]);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);

    return Scaffold(
      key: _scaffoldKey,
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
                child: const Text(AppStrings.resetMenuItem),
                enabled: _counters[_currentColor] != 0,
              ),
              const PopupMenuItem(
                value: OverflowMenuItem.share,
                child: const Text(AppStrings.shareMenuItem),
              ),
              const PopupMenuItem(
                value: OverflowMenuItem.rate,
                child: const Text(AppStrings.rateAppMenuItem),
              ),
              const PopupMenuItem(
                value: OverflowMenuItem.help,
                child: const Text(AppStrings.helpMenuItem),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(

        child: ListView(
//          padding: EdgeInsets.symmetric(
//            horizontal: 16.0,
//          ),
          children: <Widget>[
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
          style: Theme.of(context).textTheme.headline1.copyWith(
              color: AppColors.counterColorValues[_currentColor].contrastOf()),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.white54,
            onPressed: () => _changeCounter((value) => value - 1),
            tooltip: AppStrings.decrementButtonTooltip,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () => _changeCounter((value) => value + 1),
            tooltip: AppStrings.incrementButtonTooltip,
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
