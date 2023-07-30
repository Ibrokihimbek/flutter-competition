import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductsItemsWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String productImageUrl;
  final String productName;
  final String productDescription;
  final String productPrice;

  const ProductsItemsWidget({
    super.key,
    required this.onTap,
    required this.productImageUrl,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: ThemeColors.light.black.withOpacity(0.2),
                blurRadius: 2,
                offset: const Offset(0, 2)),
          ],
          borderRadius: BorderRadius.circular(12),
          color: ThemeColors.light.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        productImageUrl,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    productDescription,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 12),
                  Text(
                    productPrice,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
