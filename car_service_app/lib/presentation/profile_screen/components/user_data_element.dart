import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class UserDataElement extends StatelessWidget {
  final String userName;
  final VoidCallback onTap;

  const UserDataElement({
    super.key,
    required this.userName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                AppLocalizations.of(context).edit,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColor.black21,
                    ),
              ),
            ],
          ),
          const Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 24,
          ),
        ],
      ),
    );
  }
}
