import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryItemWidget extends StatelessWidget {
  final String categoryName;
  final String categoryImageUrl;
  final VoidCallback onTap;

  const CategoryItemWidget({
    super.key,
    required this.categoryName,
    required this.categoryImageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          ZoomTapAnimation(
            onTap: onTap,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      categoryImageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
            Text(
            categoryName,
            style: context.textStyle.regularFootNote.copyWith(
              fontWeight: FontWeight.w300,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
