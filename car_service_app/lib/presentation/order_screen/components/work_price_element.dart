import 'package:core/core.dart';
import 'package:flutter/material.dart';

class WorkPriceElement extends StatelessWidget {
  // final Work work
  final String workName;
  final int workPrice;

  const WorkPriceElement({
    super.key,
    required this.workName,
    required this.workPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(workName),
        Text(workPrice.formatMoney()),
      ],
    );
  }
}
