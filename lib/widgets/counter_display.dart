import 'package:counterswithcolornames/utils/color_utils.dart';
import 'package:counterswithcolornames/utils/utils.dart';
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({
    Key key,
    @required this.value,
    @required this.color,
    this.isPortrait = true,
  })  : assert(value != null),
        assert(color != null),
        assert(isPortrait != null),
        super(key: key);

  /// The color with which to fill the counter container.
  final Color color;

  /// The value of the counter.
  final int value;

  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    final TextStyle counterStyle =
        isPortrait ? Theme.of(context).textTheme.headline1 : Theme.of(context).textTheme.headline2;

    return Container(
      alignment: Alignment.center,
      color: color,
      padding: EdgeInsets.all(16.0),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          toDecimalString(context, value),
          overflow: TextOverflow.ellipsis,
          style: counterStyle.copyWith(
            color: color.contrastOf(),
          ),
        ),
      ),
    );
  }
}
