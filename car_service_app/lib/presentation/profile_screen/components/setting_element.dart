import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingElement extends StatelessWidget {
  final String picture;
  final String paramName;
  final VoidCallback onTap;

  const SettingElement({
    super.key,
    required this.picture,
    required this.paramName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              picture.contains('svg')
                  ? SvgPicture.asset(
                      picture,
                      width: 24,
                      height: 24,
                    )
                  : Image.asset(
                      picture,
                      width: 24,
                      height: 24,
                    ),
              const SizedBox(width: 16),
              Text(
                paramName,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              const Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 24,
              ),
            ],
          ),
        ),
        const Divider(
          indent: 40.0,
          endIndent: 16,
          thickness: 1,
          height: 30,
        ),
      ],
    );
  }
}
