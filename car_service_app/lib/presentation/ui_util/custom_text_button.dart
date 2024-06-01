import 'package:flutter/material.dart';

// I wish I could rewrite it
class CustomTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData? iconData;
  final EdgeInsets? padding;

  const CustomTextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.iconData,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 7,
            ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 15,
                    fontWeight:
                        iconData == null ? FontWeight.bold : FontWeight.w500,
                  ),
            ),
            if (iconData != null) ...[
              const SizedBox(width: 6),
              Icon(
                iconData,
                color: Theme.of(context).colorScheme.onBackground,
              )
            ]
          ],
        ),
      ),
    );
  }
}
