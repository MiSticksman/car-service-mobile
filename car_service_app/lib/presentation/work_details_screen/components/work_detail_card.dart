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
    return Row(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            color: theme.colorScheme.background,
            child: CachedNetworkImage(
              placeholder: (_, __) => const LoadingIndicator(),
              imageUrl:
                  'https://ir-2.ozone.ru/s3/multimedia-c/wc1000/6640768164.jpg',
              errorWidget: (_, __, error) => Image.asset(
                'assets/no_image.jpeg',
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                carDetail.name ?? '',
                style: theme.textTheme.displayMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3.0,
                  bottom: 5.0,
                ),
                child: Text(
                  carDetail.price.formatMoney(),
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              if (carDetail.isOriginal == true)
                Text(
                  wm.localizations.originalDetail,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 12,
                    color: theme.colorScheme.onTertiary,
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AspectRatio(
                aspectRatio: 3,
                child: GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(carDetail.url));
                  },
                  child: Image.asset('assets/ozon.png'),
                ),
              ),
              Divider(
                height: 6,
                indent: 6,
                endIndent: 6,
                color: theme.colorScheme.onSecondary,
              ),
              const SizedBox(height: 13),
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  value: false,
                  onChanged: (val) {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
