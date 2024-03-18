
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'app_router_export.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: HomeRoute.page,
          initial: true,
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
            AutoRoute(
              page: WorksTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: WorksRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: CartTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CartRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
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
              ],
            ),
          ],
        ),

        // AutoRoute(page: MyCarsRoute.page),
        // AutoRoute(page: CarAddRoute.page),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: OrderFinishedRoute.page),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'WorksTab')
class WorksTabPage extends AutoRouter {
  const WorksTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
