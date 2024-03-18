import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/domain/model/car/car_brand.dart';
import 'package:flutter/material.dart';

class BrandElement extends StatelessWidget {
  final String url;
  final CarBrand brand;
  final VoidCallback onTap;
  final bool selected;

  const BrandElement(
      {super.key,
      required this.url,
      required this.brand,
      required this.onTap,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            children: [
              CachedNetworkImage(
                imageUrl: url,
                errorWidget: (_, __, error) => Image.asset(
                  'assets/no_image.jpeg',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: selected
                      ? Border.all(
                          color: Theme.of(context).colorScheme.onSecondary,
                          width: 1,
                        )
                      : null,
                ),
                child: Center(
                  child: Text(brand.name ?? ''),
                ),
              ),
            ],
          ),
          // if (selected)
          //   const Positioned(
          //     child: Icon(Icons.check),
          //   ),
        ],
      ),
    );
  }
}
