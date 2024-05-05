import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData iconData;

  const CustomTextButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 9,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 12,
                  ),
            ),
            const SizedBox(width: 6),
            Icon(
              iconData,
              color: Theme.of(context).colorScheme.onBackground,
            )
          ],
        ),
      ),
    );
  }
}
