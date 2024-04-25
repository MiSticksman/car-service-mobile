import 'package:car_service_app/generated/app_localizations.dart';
import 'package:car_service_app/router/app_router_export.dart';

class EmptyWorksWidget extends StatelessWidget {
  final VoidCallback addCar;

  const EmptyWorksWidget({
    super.key,
    required this.addCar,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Spacer(),
          Text(
            localizations.emptyWorksText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: addCar,
            child: Text(localizations.addCar),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
