// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BrandSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<BrandSelectionRouteArgs>(
          orElse: () => const BrandSelectionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BrandSelectionScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CarAddRoute.name: (routeData) {
      final args = routeData.argsAs<CarAddRouteArgs>(
          orElse: () => const CarAddRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CarAddScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
          car: args.car,
        ),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>(
          orElse: () => const CatalogRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    EditingProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditingProfileRouteArgs>(
          orElse: () => const EditingProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditingProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ModelSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<ModelSelectionRouteArgs>(
          orElse: () => const ModelSelectionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ModelSelectionScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    MyCarsRoute.name: (routeData) {
      final args = routeData.argsAs<MyCarsRouteArgs>(
          orElse: () => const MyCarsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyCarsScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderFinishedRoute.name: (routeData) {
      final args = routeData.argsAs<OrderFinishedRouteArgs>(
          orElse: () => const OrderFinishedRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderFinishedScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>(
          orElse: () => const OrderRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    WorksRoute.name: (routeData) {
      final args = routeData.argsAs<WorksRouteArgs>(
          orElse: () => const WorksRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WorksScreenWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [BrandSelectionScreenWidget]
class BrandSelectionRoute extends PageRouteInfo<BrandSelectionRouteArgs> {
  BrandSelectionRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultBrandSelectionScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          BrandSelectionRoute.name,
          args: BrandSelectionRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static const PageInfo<BrandSelectionRouteArgs> page =
      PageInfo<BrandSelectionRouteArgs>(name);
}

class BrandSelectionRouteArgs {
  const BrandSelectionRouteArgs({
    this.key,
    this.wmFactory = defaultBrandSelectionScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'BrandSelectionRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CarAddScreenWidget]
class CarAddRoute extends PageRouteInfo<CarAddRouteArgs> {
  CarAddRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCarAddScreenWidgetModelFactory,
    Car? car,
    List<PageRouteInfo>? children,
  }) : super(
          CarAddRoute.name,
          args: CarAddRouteArgs(
            key: key,
            wmFactory: wmFactory,
            car: car,
          ),
          initialChildren: children,
        );

  static const String name = 'CarAddRoute';

  static const PageInfo<CarAddRouteArgs> page = PageInfo<CarAddRouteArgs>(name);
}

class CarAddRouteArgs {
  const CarAddRouteArgs({
    this.key,
    this.wmFactory = defaultCarAddScreenWidgetModelFactory,
    this.car,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  final Car? car;

  @override
  String toString() {
    return 'CarAddRouteArgs{key: $key, wmFactory: $wmFactory, car: $car}';
  }
}

/// generated route for
/// [CartScreenWidget]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<CartRouteArgs> page = PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    this.wmFactory = defaultCartScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CatalogScreenWidget]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCatalogScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    this.key,
    this.wmFactory = defaultCatalogScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [CategoryScreenWidget]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCategoryScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<CategoryRouteArgs> page =
      PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    this.wmFactory = defaultCategoryScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [EditingProfileScreenWidget]
class EditingProfileRoute extends PageRouteInfo<EditingProfileRouteArgs> {
  EditingProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultEditingProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          EditingProfileRoute.name,
          args: EditingProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'EditingProfileRoute';

  static const PageInfo<EditingProfileRouteArgs> page =
      PageInfo<EditingProfileRouteArgs>(name);
}

class EditingProfileRouteArgs {
  const EditingProfileRouteArgs({
    this.key,
    this.wmFactory = defaultEditingProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'EditingProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ModelSelectionScreenWidget]
class ModelSelectionRoute extends PageRouteInfo<ModelSelectionRouteArgs> {
  ModelSelectionRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultModelSelectionScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ModelSelectionRoute.name,
          args: ModelSelectionRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ModelSelectionRoute';

  static const PageInfo<ModelSelectionRouteArgs> page =
      PageInfo<ModelSelectionRouteArgs>(name);
}

class ModelSelectionRouteArgs {
  const ModelSelectionRouteArgs({
    this.key,
    this.wmFactory = defaultModelSelectionScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ModelSelectionRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [MyCarsScreenWidget]
class MyCarsRoute extends PageRouteInfo<MyCarsRouteArgs> {
  MyCarsRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultMyCarsScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          MyCarsRoute.name,
          args: MyCarsRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'MyCarsRoute';

  static const PageInfo<MyCarsRouteArgs> page = PageInfo<MyCarsRouteArgs>(name);
}

class MyCarsRouteArgs {
  const MyCarsRouteArgs({
    this.key,
    this.wmFactory = defaultMyCarsScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'MyCarsRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderFinishedScreenWidget]
class OrderFinishedRoute extends PageRouteInfo<OrderFinishedRouteArgs> {
  OrderFinishedRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderFinishedScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderFinishedRoute.name,
          args: OrderFinishedRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderFinishedRoute';

  static const PageInfo<OrderFinishedRouteArgs> page =
      PageInfo<OrderFinishedRouteArgs>(name);
}

class OrderFinishedRouteArgs {
  const OrderFinishedRouteArgs({
    this.key,
    this.wmFactory = defaultOrderFinishedScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderFinishedRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [OrderScreenWidget]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultOrderScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<OrderRouteArgs> page = PageInfo<OrderRouteArgs>(name);
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    this.wmFactory = defaultOrderScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProductScreenWidget]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProductScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    this.wmFactory = defaultProductScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileScreenWidget]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.wmFactory = defaultProfileScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [WorksScreenWidget]
class WorksRoute extends PageRouteInfo<WorksRouteArgs> {
  WorksRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultWorksScreenWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          WorksRoute.name,
          args: WorksRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'WorksRoute';

  static const PageInfo<WorksRouteArgs> page = PageInfo<WorksRouteArgs>(name);
}

class WorksRouteArgs {
  const WorksRouteArgs({
    this.key,
    this.wmFactory = defaultWorksScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'WorksRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
