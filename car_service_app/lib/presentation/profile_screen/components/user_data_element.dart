import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/generated/app_localizations.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserDataElement extends StatelessWidget {
  final String userName;
  final VoidCallback logoutTap;

  const UserDataElement({
    super.key,
    required this.userName,
    required this.logoutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              '+79290091219'.formatPhone(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: logoutTap,
          child: SvgPicture.asset('assets/svg/light/log_out.svg'),
        ),
      ],
    );
  }
}
