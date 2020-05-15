import 'package:flutter/material.dart';

import 'color_filled_circle.dart';

class ColorListTile extends StatelessWidget {
  const ColorListTile({
    Key key,
    @required this.color,
    @required this.titleData,
    this.onTap,
    this.selected = false,
  })  : assert(color != null),
        assert(titleData != null),
        super(key: key);

  final Color color;

  final bool selected;

  final String titleData;

  /// Called when the user taps this list tile.
  ///
  /// Inoperative if [enabled] is false.
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? Colors.black12 : null,
      child: ListTile(

//      selected: color == _currentColor,
        leading: ColorFilledCircle(
          color: color,
          border: color == Colors.white ? Border.all() : null,
        ),
        title: Text(
          this.titleData,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
