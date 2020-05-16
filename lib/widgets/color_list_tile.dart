import 'package:flutter/material.dart';

import 'color_filled_circle.dart';

class ColorListTile<T> extends StatelessWidget {
  const ColorListTile({
    Key key,
    @required this.value,
    @required this.color,
    @required this.title,
    this.selected = false,
    this.onTap,
  })  : assert(color != null),
        assert(title != null),
        super(key: key);

  final T value;

  final Color color;

  final String title;

  final bool selected;

  /// Called when the user taps this list tile.
  ///
  /// Inoperative if [enabled] is false.
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? Colors.black12 : null,
      child: ListTile(
        selected: selected,
        leading: ColorFilledCircle(
          color: color,
          border: color == Colors.white ? Border.all() : null,
        ),
        title: Text(
          this.title,
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
        ),
        onTap: onTap,
      ),
    );
  }
}
