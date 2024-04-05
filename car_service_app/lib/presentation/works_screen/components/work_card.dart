import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/work/work.dart';
import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    super.key,
    required this.work,
    required this.onTap,
    required this.theme,
    required this.selected,
  });

  final Work work;
  final VoidCallback onTap;
  final bool selected;

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onBackground,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            color: AppColor.whiteF8,
            elevation: 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Text(
                  work.name ?? '',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: theme.textTheme.displayMedium,
                ),
              ),
            ),
          ),
          if (selected)
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.check,
                color: AppColor.orange,
              ),
            ),
        ],
      ),
    );
  }
}
