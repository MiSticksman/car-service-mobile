import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/presentation/catalog_screen/catalog_screen.dart';
import 'package:car_service_app/presentation/catalog_subcategories_screen/catalog_subcategories_screen.dart';
import 'package:car_service_app/presentation/home_screen/home_screen.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
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
          ],
        ),
      ],
    ),
    // AutoRoute(page: OrderRoute.page),
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