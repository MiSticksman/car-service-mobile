import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.up,
        backgroundColor: Theme.of(this).colorScheme.onError,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 15,
        ),
        content: Text(message),
      ),
    );
  }
}
