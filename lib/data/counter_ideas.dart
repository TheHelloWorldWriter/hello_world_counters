// Copyright 2020-2025 The Hello World Writer. All rights reserved.
// https://www.thehelloworldwriter.com
//
// Use of this source code is governed by an MIT-style license
// that can be found in the LICENSE file.

import '../models/counter.dart';

const Map<CounterType, List<String>> counterIdeas = {
  CounterType.black: [],
  CounterType.white: [],
  CounterType.red: [
    // --- VISUAL (Literally Red) ---
    'Red cars that were definitely speeding',
    'Tomatoes sliced for a sandwich',
    'Spicy chili peppers I dared to eat',
    'Apples eaten to keep the doctor away',
    'People wearing a red shirt today',
    'Roses I stopped to smell',
    'Bricks in the wall (if you are extremely bored)',
    'Slices of pepperoni pizza',
    'Glasses of red wine consumed',
    // --- UI & TECH (Red in Interfaces) ---
    'Bugs found in production code', // Errors are red
    'Times the battery icon turned red', // Low battery
    'YouTube videos watched instead of working', // Logo is red
    'Critical errors I pretended I didn\'t see',
    'Urgent emails marked "High Priority"', // Usually red exclamation mark
    'False alarms from the smoke detector', // Device is red
    // --- SYMBOLIC & EMOTIONAL (Metaphors) ---
    'Stop signs that I actually stopped for', // Stop = Red
    'Times I successfully said "No"', // Cancel/No buttons are red
    'Red flags I ignored in a conversation', // The idiom
    'Times I blushed from embarrassment', // Turning red
    'Moments I felt actual "road rage"', // Seeing red/Anger
  ],
  CounterType.green: [],
  CounterType.yellow: [],
  CounterType.blue: [
    'Glasses of water',
    'Bugs fixed',
    'Times you looked at the sky',
    'Deep breaths taken',
    'Cold emails sent',
  ],
  CounterType.brown: [
    'Glasses of water',
    'Bugs fixed',
    'Times you looked at the sky',
    'Deep breaths taken',
    'Cold emails sent',
  ],
  CounterType.purple: [
    'Creative bursts',
    'Royal moments',
    'Songs looped',
    'Unusual coincidences',
    'Dreams remembered',
  ],
  CounterType.pink: [
    'Creative bursts',
    'Royal moments',
    'Songs looped',
    'Unusual coincidences',
    'Dreams remembered',
  ],
  CounterType.orange: [
    'Creative bursts',
    'Royal moments',
    'Songs looped',
    'Unusual coincidences',
    'Dreams remembered',
  ],
  CounterType.grey: [
    'Creative bursts',
    'Royal moments',
    'Songs looped',
    'Unusual coincidences',
    'Dreams remembered',
  ],
};
