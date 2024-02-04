import 'package:car_service_app/domain/use_case/profile_use_case.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartUpWidget extends StatelessWidget {
  const StartUpWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ProfileUseCase(),
      child: child,
    );
  }
}
