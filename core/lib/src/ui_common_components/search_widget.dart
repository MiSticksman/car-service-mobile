import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller, this.hintText,
  });

  final TextEditingController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
     final border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        width: 2,
        color: theme.colorScheme.onSurface,
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: TextField(
        controller: controller,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.primary,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: border,
          focusedErrorBorder: border,
          disabledBorder: border,
          enabledBorder: border,
          border: border,
          prefixIcon: Icon(
            Icons.search,
            color: theme.colorScheme.onSecondary,
          ),
          hintText: hintText,
          hintStyle: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}