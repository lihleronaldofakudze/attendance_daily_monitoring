import 'package:flutter/material.dart';

AlertDialog okAlertDialogWidget(BuildContext context, String message) {
  return AlertDialog(
    title: Text('Attendance - Daily Monitoring'),
    content: Text(message),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Ok'))
    ],
  );
}
