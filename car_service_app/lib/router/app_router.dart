import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/modal_bottom_sheet_builder.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'app_router_export.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'ScreenWidget,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
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
            CustomRoute(
              page: EditingProfileRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: AuthRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: MyCarsRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: WorksRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: BrandSelectionRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: ModelSelectionRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: CarAddRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: CarInfoRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: WorksRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
            CustomRoute(
              page: WorkDetailsRoute.page,
              customRouteBuilder: modalBottomSheetBuilder,
            ),
          ],
        ),
      ];

  // @override
  // void onNavigation(NavigationResolver resolver, StackRouter router) {
    // const auth = false;
    // if (auth || resolver.route.name == AuthRoute.name) {
    //   resolver.next();
    // } else {
    //   push(AuthRoute());
    //   resolver.next(auth ?? false);
    // }
  // }
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
