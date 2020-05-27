// Copyright 2020 anaurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Displays a Material dialog with "accept" and "cancel" buttons.
void showAcceptCancelDialog(
  BuildContext context,
  String message,
  String acceptButton,
  String cancelButton,
  VoidCallback onAccept,
) {
  showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text(cancelButton.toUpperCase()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(acceptButton.toUpperCase()),
              onPressed: () {
                if (onAccept != null) {
                  onAccept();
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
