import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingElement extends StatefulWidget {
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
  State<SettingElement> createState() => _SettingElementState();
}

class _SettingElementState extends State<SettingElement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        children: [
          widget.picture.contains('svg')
              ? SvgPicture.asset(
                  widget.picture,
                  width: 30,
                  height: 30,
                )
              : Image.asset(
                  widget.picture,
                  width: 30,
                  height: 30,
                ),
          const SizedBox(width: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(
              widget.paramName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/svg/light/arrow_right.svg',
          ),
        ],
      ),
    );
  }
}
