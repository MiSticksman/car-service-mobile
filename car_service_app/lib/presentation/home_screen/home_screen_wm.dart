import 'package:car_service_app/router/app_router_export.dart';

abstract class IHomeScreenWidgetModel implements IWidgetModel {
  void updateTab(int index, TabsRouter tabsRouter);
}

HomeScreenWidgetModel defaultHomePageWidgetModelFactory(BuildContext context) {
  return HomeScreenWidgetModel(HomeScreenModel());
}

// TODO: cover with documentation
/// Default widget model for HomeScreenWidget
class HomeScreenWidgetModel
    extends WidgetModel<HomeScreenWidget, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel(super.model);

  @override
  void updateTab(int index, TabsRouter tabsRouter) {
    if (tabsRouter.activeIndex != index) {
      tabsRouter.setActiveIndex(index);
      return;
    }
    final childRouter = tabsRouter.childControllers[index];
    if (childRouter is StackRouter) {
      childRouter.popUntilRoot();
    }
  }
}
