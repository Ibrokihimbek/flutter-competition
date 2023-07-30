import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAddressText extends StatelessWidget {
  const MyAddressText({Key? key, required this.textController})
      : super(key: key);
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      left: 16,
      right: 16,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(SvgImages.location, height: 35, width: 35),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                maxLines: 2,
                readOnly: true,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero, border: InputBorder.none),
                controller: textController,
                style: context.textStyle.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
