import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).maybePop();
      },
      icon: SvgPicture.asset(
        'assets/svg/arrow_back.svg',
        width: 24,
      ),
    );
  }
}
