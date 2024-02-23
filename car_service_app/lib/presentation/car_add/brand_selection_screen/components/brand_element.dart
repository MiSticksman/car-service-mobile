import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BrandElement extends StatelessWidget {
  final String url;
  final String brand;
  final VoidCallback onTap;

  const BrandElement({
    super.key,
    required this.url,
    required this.brand,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: url,
            errorWidget: (_, __, error) => Image.asset(
              'assets/no_image.jpeg',
            ),
          ),
          Text(brand),
        ],
      ),
    );
  }
}
