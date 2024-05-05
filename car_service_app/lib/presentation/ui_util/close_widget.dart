import 'package:flutter/material.dart';

class CloseWidget extends StatelessWidget {
  const CloseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).maybePop(),
        child: Icon(
          Icons.close,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
