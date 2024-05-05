import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderScreen module
@RoutePage()
class OrderScreenWidget extends ElementaryWidget<IOrderScreenWidgetModel> {
  const OrderScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.ordering),
        automaticallyImplyLeading: false,
        actions: const [CloseWidget()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text('Вы можете выбрать наиболее подходящий автосервис на карте'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(flex: 2),
                Text('Воронеж', style: theme.textTheme.bodyLarge,),
                const Spacer(flex: 5),
                CustomTextButton(
                  onTap: wm.showMap,
                  text: 'Выбрать сервис',
                  iconData: Icons.pin_drop_rounded,
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8,
                  ),
                ),
                const Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
