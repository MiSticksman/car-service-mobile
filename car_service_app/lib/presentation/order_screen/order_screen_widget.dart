import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/order_screen/components/work_price_element.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_button.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                Text(
                  'Выбор сервиса',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(flex: 10),
                SvgPicture.asset('assets/svg/light/pin.svg'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0),
                  child: Text('Воронеж'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            StreamBuilder(
              stream: wm.selectedServiceController,
              builder: (context, snapshot) {
                final service = snapshot.data;
                if (service == null) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextButton(
                        onTap: wm.showMap,
                        text: 'Выбрать сервис',
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                      ),
                    ],
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 24,
                        left: 16,
                        right: 16,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
                        ),
                        border: Border.all(
                          width: 2,
                          color: theme.colorScheme.onSecondary
                        ),
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              service.name ?? '',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              service.workHours ?? '',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text(
                                  service.address ?? '',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSecondary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextButton(
                                  onTap: wm.showMap,
                                  text: 'Выбрать другой сервис',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'Дата записи',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 15),
                    EntityStateNotifierBuilder(
                      listenableEntityState: wm.datesState,
                      loadingBuilder: (_, __) => const LoadingIndicator(),
                      builder: (BuildContext context, data) {
                        final dates = data?.$1 ?? [];
                        if (dates.isEmpty) {
                          return const Center(
                            child: Text('[...]'),
                          );
                        }
                        final selectedDate = data?.$2;
                        return SizedBox(
                          height: 69,
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final date = dates[index];
                              final selected = date == selectedDate;
                              return InkWell(
                                onTap: () => wm.selectDate(date),
                                child: DateWidget(
                                  selected: selected,
                                  date: date.data ?? '',
                                ),
                              );
                            },
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 8),
                            itemCount: dates.length,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 22),
                    Text(
                      'Время записи',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 15),
                    EntityStateNotifierBuilder(
                      listenableEntityState: wm.timesState,
                      loadingBuilder: (_, __) => const LoadingIndicator(),
                      builder: (BuildContext context, data) {
                        final times = data?.$1 ?? [];
                        if (times.isEmpty) {
                          return const Center(
                            child: Text('[...]'),
                          );
                        }
                        final selectedTime = data?.$2;
                        return SizedBox(
                          height: 46,
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final time = times[index];
                              final selected = time == selectedTime;
                              return InkWell(
                                onTap: () => wm.selectTime(time),
                                child: SizedBox(
                                  height: 46,
                                  child: TimeWidget(
                                    selected: selected,
                                    time: time.data ?? '',
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (_, __) => const SizedBox(width: 8),
                            itemCount: times.length,
                          ),
                        );
                      },
                       
                    ),
                    const SizedBox(height: 18),
                    const Divider(),
                    const SizedBox(height: 22),
                    Text(
                      'Сумма заказа',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return WorkPriceElement(
                          workName: wm.names[index],
                          workPrice: wm.prices[index],
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemCount: 2,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Итого',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          2000.formatMoney(),
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/light/payment.svg'),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text:
                                  'Оплата производится наличными или банковской картой',
                              children: [
                                TextSpan(
                                  text: ' в автосервисе',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onSurface,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Оформить заказ'),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.selected,
    required this.date,
  });

  final bool selected;

  // final DeliveriesIntervals date;
  final String date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 72 / 68,
      child: Container(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: selected ? theme.colorScheme.tertiary : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(
            width: 2,
            color: selected
                ? theme.colorScheme.onSecondary
                : theme.colorScheme.secondaryContainer,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              // presenter.stringToDateLocalized(date.title ?? ''),
              // style: theme.normalBlack14.copyWith(
              //   height: 19.6 / 14,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.selected,
    required this.time,
  });

  final bool selected;

  // final DeliveriesTime time;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 121 / 46,
      child: Container(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: selected ? theme.colorScheme.tertiary : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(
            width: 2,
            color: selected
                ? theme.colorScheme.onSecondary
                : AppColor.lightGrayEB,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Center(
          child: Text(
            time,
            // style: theme.normalBlack16.copyWith(
            //   color: theme.black21,
            // ),
          ),
        ),
      ),
    );
  }
}
