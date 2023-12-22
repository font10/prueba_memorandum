import 'package:flutter/material.dart';

void showMessage(BuildContext context, String message, Color background) {
  final snackBar = SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white)),
    backgroundColor: background,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
