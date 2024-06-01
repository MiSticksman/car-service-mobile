import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car_brand.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:flutter/material.dart';

class BrandElement extends StatelessWidget {
  final String? url;
  final CarBrand brand;
  final VoidCallback onTap;
  final bool selected;

  const BrandElement({
    super.key,
    this.url,
    required this.brand,
    required this.onTap,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: selected
          ? Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                color: theme.colorScheme.tertiary,
              ),
              child: _BrandCard(brand: brand),
            )
          : _BrandCard(brand: brand),
    );
  }
}

class _BrandCard extends StatelessWidget {
  final CarBrand brand;

  const _BrandCard({
    super.key,
    required this.brand,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: CachedNetworkImage(
            width: 95,
            height: 80,
            imageUrl: brand.pictureUrl ??
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Toyota_Mark_II_Grande_Regalia_front_quarter.JPG/1200px-Toyota_Mark_II_Grande_Regalia_front_quarter.JPG',
            errorWidget: (_, __, error) => Image.asset(
              'assets/no_image.jpeg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          brand.name ?? '',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
