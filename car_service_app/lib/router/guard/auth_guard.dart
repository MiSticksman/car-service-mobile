import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/router/app_router.dart';


class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {

    // final profile = context.get<IProfile<UserData>>();
    if (auth) {
      resolver.next(true);
    } else {
      await router.root.navigate(AuthRoute());
      resolver.next(auth);
    }
  }
}
