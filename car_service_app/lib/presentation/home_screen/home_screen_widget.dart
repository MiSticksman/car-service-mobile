
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for HomeScreen module
@RoutePage()
class HomeScreenWidget extends ElementaryWidget<IHomeScreenWidgetModel> {
  const HomeScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultHomePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomeScreenWidgetModel wm) {
    return const AppScreen();
  }
}

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final localizations = AppLocalizations.of(context);
    return AutoTabsScaffold(
      routes: const [
        // ShowCaseTab(),
        // CatalogTab(),
        // BasketTab(),
        // FavoritesTab(),
        // UserProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        // return StreamBuilder(
        //   stream: context.read<CartUseCase>(),
        //   // stream: AppComponents().cartUseCase.cart.stream,
        //   // initialData: AppComponents().cartUseCase.cart.valueOrNull,
        //   builder: (context, snapshot) {
        //     final data = snapshot.data;
        //     final count = data?.count.toDouble() ?? 0;
            return CupertinoTabBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                CustomBottomNavigationBarItem(
                  icon: Icons.manage_search,
                  label: 'Каталог',
                ),
                CustomBottomNavigationBarItem(
                  icon: Icons.shopping_bag_outlined,
                  label: 'Корзина',
                  // badgeChar: count > 0 ? count.toInt().toString() : null,
                ),
                CustomBottomNavigationBarItem(
                  icon: Icons.person_outline,
                  label: 'Профиль',
                ),
              ],
            );
          },
        );
      // },
    // );
  }
}

class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required IconData icon,
    required String label,
    String? badgeChar,
  }) : super(
          icon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          label: label,
          activeIcon: _NavigationBarIcon(
            icon: icon,
            badgeChar: badgeChar,
          ),
          backgroundColor: Colors.transparent,
        );
}

class _NavigationBarIcon extends StatelessWidget {
  const _NavigationBarIcon({
    super.key,
    required this.icon,
    this.badgeChar,
  });

  final IconData icon;
  final String? badgeChar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          icon,
          size: 25,
        ),
        Visibility(
          visible: badgeChar != null && badgeChar != '0',
          child: Positioned(
            right: -10,
            top: -4,
            child: _Badge(
              char: badgeChar ?? '',
            ),
          ),
        )
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    super.key,
    required this.char,
  });

  final String char;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: theme.colorScheme.error,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: theme.colorScheme.onError,
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth: 20,
        maxHeight: 20,
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: FittedBox(
          child: Text(
            char,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onError,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
