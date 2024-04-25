import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;

  const CarCard({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: CachedNetworkImage(
        imageUrl:
            imageUrl ?? 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Toyota_Mark_II_Grande_Regalia_front_quarter.JPG/1200px-Toyota_Mark_II_Grande_Regalia_front_quarter.JPG',
        errorWidget: (_, __, error) => Image.asset(
          'assets/no_image.jpeg',
        ),
        fit: BoxFit.cover,
        height: height,
        width: width ?? 150,
      ),
    );
  }
}
