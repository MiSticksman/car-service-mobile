import 'package:flutter/material.dart';

class ErrorLoadingDataWidget extends StatelessWidget {
  final String text;

  const ErrorLoadingDataWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Spacer(),
        Text(text, style: Theme.of(context).textTheme.displayLarge),
        const Spacer(flex: 3),
      ]),
    );
  }
}
