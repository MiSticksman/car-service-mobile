import 'package:car_service_app/domain/model/car/car.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'app_router_export.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          page: ProfileRoute.page,
          customRouteBuilder: <T>(
            BuildContext context,
            Widget child,
            AutoRoutePage<T> page,
          ) {
            return MaterialWithModalsPageRoute<T>(
              settings: page,
              fullscreenDialog: true,
              builder: (_) => child,
            );
          },
          children: [
            CustomRoute(
              initial: true,
              page: ProfileRoute.page,
              customRouteBuilder: <T>(
                BuildContext context,
                Widget child,
                AutoRoutePage<T> page,
              ) {
                return MaterialWithModalsPageRoute<T>(
                  settings: page,
                  fullscreenDialog: true,
                  builder: (_) => child,
                );
              },
            ),
            AutoRoute(page: MyCarsRoute.page),
            AutoRoute(page: OrderFinishedRoute.page),
            AutoRoute(page: EditingProfileRoute.page),
            AutoRoute(page: OrderRoute.page),
            AutoRoute(page: OrderFinishedRoute.page),
          ],
        ),
      ];
}

