import 'package:car_service_app/domain/model/work/work.dart';
import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  final Work work;
  final VoidCallback onTap;
  final bool selected;
  final ThemeData theme;

  const WorkCard({
    super.key,
    required this.work,
    required this.onTap,
    required this.selected,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            work.name ?? '',
            style: theme.textTheme.bodyLarge,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Spacer(),
        Checkbox(
          value: selected,
          onChanged: (val) => onTap(),
        ),
      ],
    );
  }
}
