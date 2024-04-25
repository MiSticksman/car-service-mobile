import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/work/car_work_detail.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkDetailCard extends StatelessWidget {
  final CarWorkDetail carDetail;
  final IWorkDetailsScreenWidgetModel wm;

  const WorkDetailCard({
    super.key,
    required this.carDetail,
    required this.wm,
  });

  @override
  Widget build(BuildContext context) {
    final theme = wm.theme;
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              // width: selected ? 2.5 : 1,
              color: theme.colorScheme.onBackground,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          color: theme.colorScheme.background,
          elevation: 0.3,
          child: Row(
            children: [
              CachedNetworkImage(
                placeholder: (_, __) => const LoadingIndicator(),
                imageUrl:
                    'https://ir-2.ozone.ru/s3/multimedia-c/wc1000/6640768164.jpg',
                errorWidget: (_, __, error) => Image.asset(
                  'assets/no_image.jpeg',
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(carDetail.name ?? '',
                      style: theme.textTheme.displayMedium),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 3.0,
                      bottom: 5.0,
                    ),
                    child: Text(carDetail.price.formatMoney(),
                        style: theme.textTheme.displayMedium),
                  ),
                  if (carDetail.isOriginal == true)
                    Text(wm.localizations.originalDetail, style: theme.textTheme.bodyMedium),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(carDetail.url));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        color: AppColor.greyD1,
                      ),
                      width: 50,
                      height: 35,
                      child: SvgPicture.asset(
                        'assets/svg/arrow_top_right.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      'Ozon',
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      side: const BorderSide(width: 1.5),
                      value: false,
                      onChanged: (val) {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
