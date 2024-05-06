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
              vertical: 11,
              horizontal: 9,
            ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.all(
            Radius.circular(iconData == null ? 4 : 20),
          ),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: iconData == null ? 14 : 12,
                    fontWeight:
                        iconData == null ? FontWeight.bold : FontWeight.normal,
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
