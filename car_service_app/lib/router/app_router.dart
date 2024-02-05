import 'app_router_export.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              initial: true,
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRoute.page,
                ),
                AutoRoute(page: CatalogSubcategoriesRoute.page),
                AutoRoute(page: ProductRoute.page),
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
                AutoRoute(
                  initial: true,
                  page: ProfileRoute.page,
                ),
                AutoRoute(page: CarAddRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: OrderFinishedRoute.page),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
