import 'package:counterswithcolornames/common/app_strings.dart';
import 'package:counterswithcolornames/models/counter.dart';
import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/utils/ui_utils.dart';
import 'package:counterswithcolornames/utils/utils.dart';
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

  void _onDrawerCounterTap(CounterType counterType) {
    setState(() {
      _counters.currentType = counterType;
    });
    Navigator.pop(context);
  }

  /// Performs the tasks of the popup menu items.
  void popupMenuSelection(MenuAction item) {
    switch (item) {
      case MenuAction.reset:
        // Reset the counter after asking for confirmation
        showYesNoDialog(context, AppStrings.resetConfirm, () => _changeCounter((value) => 0));
        break;
      case MenuAction.share:
        Share.share(
//            AppStrings.shareText(AppStrings.counterNames[_currentCounter], _counters[_currentCounter)

//          'Your ${AppStrings.counterNames[_currentCounter]} is ${_countersList[_currentCounter]}',
          'Your ${_counters.current.name} is ${_counters.current.value}',
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
      _counters.current.value = change(_counters.current.value);
    });
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
        color: _counters.current.color,
        child: Text(
          localizations.formatDecimal(_counters.current.value),
          style: Theme.of(context).textTheme.headline1.copyWith(
                color: _counters.current.color.contrastOf(),
              ),
        ),
      ),
      floatingActionButton: _buildFABs(),
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
