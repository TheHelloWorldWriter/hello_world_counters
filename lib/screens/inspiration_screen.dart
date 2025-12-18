// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../data/counter_ideas.dart';
import '../models/counter.dart';
import '../utils/utils.dart';

/// Screen that displays inspiration ideas for counting with a specific counter color.
class InspirationScreen extends StatelessWidget {
  const InspirationScreen({required this.counter, super.key});

  final Counter counter;

  @override
  Widget build(BuildContext context) {
    final List<String> ideas = counterIdeas[counter.type] ?? [];
    final Color counterColor = counter.color;
    final Color textColor = counterColor.contrastOf();
    final String colorName = counter.type.name[0].toUpperCase() + counter.type.name.substring(1);

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.inspirationScreenTitle(colorName)),
        backgroundColor: counterColor,
        foregroundColor: textColor,
        iconTheme: IconThemeData(color: textColor),
      ),
      body: ideas.isEmpty ? _buildEmptyState(colorName) : _buildIdeasList(ideas, counterColor),
    );
  }

  /// Builds the empty state when no ideas are available.
  Widget _buildEmptyState(String colorName) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              strings.noInspirationTitle(colorName),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              strings.noInspirationSubtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the list of counting ideas.
  Widget _buildIdeasList(List<String> ideas, Color counterColor) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        // Header text
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Text(
            strings.inspirationHeader,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        // Ideas list
        ...ideas.map(
          (idea) => ListTile(
            leading: Icon(
              Icons.circle,
              size: 12,
              color: counterColor,
            ),
            title: Text(idea),
            visualDensity: VisualDensity.comfortable,
          ),
        ),
      ],
    );
  }
}
