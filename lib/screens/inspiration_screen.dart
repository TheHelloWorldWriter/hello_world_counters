// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/strings.dart' as strings;
import '../data/counter_ideas.dart';
import '../models/counter.dart';
import '../utils/utils.dart' as utils;

/// Screen that displays inspiration ideas for counting with a specific counter color.
class InspirationScreen extends StatefulWidget {
  const InspirationScreen({required this.counter, super.key});

  /// The counter for which to show inspiration ideas.
  final Counter counter;

  @override
  State<InspirationScreen> createState() => _InspirationScreenState();
}

/// The logic and internal state for the inspiration screen widget.
class _InspirationScreenState extends State<InspirationScreen> {
  /// The shuffled list of ideas to display.
  late List<String> _shuffledIdeas;

  @override
  void initState() {
    super.initState();
    // Shuffle ideas once when the screen is created
    _shuffledIdeas = List.from(counterIdeas[widget.counter.type] ?? [])..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final Color counterColor = widget.counter.color;
    final Color textColor = counterColor.contrastOf();
    final String colorName =
        widget.counter.type.name[0].toUpperCase() + widget.counter.type.name.substring(1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: counterColor,
        foregroundColor: textColor,
        title: Text(strings.inspirationScreenTitle(colorName)),
      ),
      body: _shuffledIdeas.isEmpty
          ? _EmptyStateWidget(colorName: colorName)
          : _IdeasListWidget(ideas: _shuffledIdeas, dotColor: counterColor),
    );
  }
}

/// Widget that displays the empty state when no ideas are available.
class _EmptyStateWidget extends StatelessWidget {
  const _EmptyStateWidget({required this.colorName});

  /// The name of the counter color.
  final String colorName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lightbulb_outline, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              strings.noInspirationTitle(colorName),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              strings.noInspirationSubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget that displays the list of counting ideas.
class _IdeasListWidget extends StatelessWidget {
  const _IdeasListWidget({
    required this.ideas,
    required this.dotColor,
  });

  /// The list of ideas to display.
  final List<String> ideas;

  /// The color of the leading dot for each idea.
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        // Header text
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Text(
            strings.inspirationHeader,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        // Ideas list
        ...ideas.map((idea) => _IdeaListItem(idea: idea, dotColor: dotColor)),
      ],
    );
  }
}

/// Widget that displays a single idea list item with a colored dot.
///
/// Easter egg: Tap the colored dot to copy the idea text to clipboard.
class _IdeaListItem extends StatelessWidget {
  const _IdeaListItem({
    required this.idea,
    required this.dotColor,
  });

  /// The text of the idea.
  final String idea;

  /// The color of the leading dot.
  final Color dotColor;

  /// Handles tap on the dot to copy the idea to clipboard.
  void _onDotPress(BuildContext context) {
    Clipboard.setData(ClipboardData(text: idea));
    utils.showSnackBar(context, strings.ideaCopied);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const .symmetric(horizontal: 8.0),
      horizontalTitleGap: 8.0,
      minLeadingWidth: 0.0,
      visualDensity: .comfortable,
      leading: IconButton(
        visualDensity: .compact,
        tooltip: strings.ideaCopyTooltip,
        onPressed: () => _onDotPress(context),
        icon: Icon(Icons.circle, size: 12.0, color: dotColor),
      ),
      title: Text(
        idea,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 15.0),
      ),
    );
  }
}
