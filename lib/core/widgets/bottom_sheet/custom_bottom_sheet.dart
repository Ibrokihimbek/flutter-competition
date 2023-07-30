import 'package:flutter/material.dart';
import 'package:flutter_competition/core/extension/size_extension.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';

Future<T?> customBottomSheet<T>(
  BuildContext context, {
  bool? isShowBackButton,
  required WidgetBuilder builder,
  bool? isDismissible,
  bool? enableDrag,
}) => showModalBottomSheet(
    isDismissible: isDismissible ?? true,
    isScrollControlled: true,
    enableDrag: enableDrag ?? true,
    context: context,
    constraints: BoxConstraints(
      maxHeight: context.mediaQuery.size.height * 0.6,
    ),
    builder: (context) => Material(
        color: Colors.white,
        borderRadius: AppUtils.kBorderRadiusTop12,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Visibility(
              visible: isShowBackButton ?? true,
              child: Positioned(
                top: -75,
                left: -6,
                child: Padding(
                  padding: AppUtils.kPaddingHor16Ver8,
                  child: CircleAvatar(
                    backgroundColor: ThemeColors.light.white,
                    radius: 24,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: BoxDecoration(
                      color: ThemeColors.light.midGray3,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Flexible(
                  child: builder(context),
                ),
              ],
            ),
          ],
        ),
      ),
  );

typedef WidgetScrollBuilder = Widget Function(
  BuildContext context,
  ScrollController? controller,
);

Future<T?> customModalBottomSheet<T>({
  required BuildContext context,
  required WidgetScrollBuilder builder,
  bool isScrollControlled = false,
}) async => showModalBottomSheet(
    context: context,
    elevation: 0,
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxHeight: context.mediaQuery.size.height * 0.9,
      minHeight: context.mediaQuery.size.height * 0.2,
    ),
    builder: (_) {
      if (isScrollControlled) {
        return DraggableScrollableSheet(
          initialChildSize: 1,
          minChildSize: 0.5,
          expand: false,
          snap: true,
          builder: (context, controller) => builder(context, controller),
        );
      } else {
        return builder(context, null);
      }
    },
  );
