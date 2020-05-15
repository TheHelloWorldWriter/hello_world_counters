import 'package:flutter/material.dart';

void showYesNoDialog(BuildContext context, String message, VoidCallback onYesPressed) {
  showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
//          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('ACCEPT'),
              onPressed: () {
                if (onYesPressed != null) {
                  onYesPressed();
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
