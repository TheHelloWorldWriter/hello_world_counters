// Copyright 2020 anaurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// A circular widget filled with a specified [Color].
class ColorFilledCircle extends StatelessWidget {
  /// Creates a circular widget filled with the specified [Color].
  ///
  /// The [color] parameter must not be null.
  const ColorFilledCircle({
    Key key,
    @required this.color,
    this.diameter = 40.0,
    this.border,
  })  : assert(color != null),
        super(key: key);

  /// The color with which to fill the circle.
  final Color color;

  /// The size of the circle, expressed as the diameter.
  final double diameter;

  /// A border to draw above the background [color].
  final BoxBorder border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: color,
        border: border,
        shape: BoxShape.circle,
      ),
    );
  }
}
