import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';

import 'masked_text_input_formatter.dart';

class AddCardExpireDateTextFieldWidget extends StatelessWidget {

  const AddCardExpireDateTextFieldWidget({
    super.key,
    this.showError,
    this.textInputAction,
    this.errorText,
    this.labelInTextField = false,
    this.prefixIcon,
    this.labelText,
    required this.onChanged,
    required this.focusNode,
    required this.controller,
    required this.hintText,
  });
  final String? errorText;
  final bool? showError;
  final String hintText;
  final OnChanged onChanged;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Widget? prefixIcon;
  final String? labelText;
  final bool labelInTextField;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null && !labelInTextField)
          Text(
            labelText!,
            style: context.textStyle.regularCaption2,
          ),
        if (labelText != null && !labelInTextField) AppUtils.kGap6,
        TextFormField(
          textInputAction: textInputAction ?? TextInputAction.done,
          onChanged: onChanged,
          focusNode: focusNode,
          controller: controller,
          inputFormatters: [
            MaskedTextInputFormatter(
              mask: '##/##',
              separator: '/',
              filter: RegExp('[0-9]'),
            ),
            TextInputFormatter.withFunction((oldValue, newValue) {
              if ((newValue.text.length == 5 &&
                      DateTime(
                                  int.parse(
                                      '20${newValue.text[3]}${newValue.text[4]}'),
                                  int.parse(
                                      '${newValue.text[0]}${newValue.text[1]}'))
                              .compareTo(DateTime.now()) <
                          0) ||
                  (newValue.text.length == 2 &&
                      int.parse(newValue.text[0] + newValue.text[1]) > 12)) {
                return oldValue;
              }
              return newValue;
            }),
          ],
          keyboardType: TextInputType.number,
          style: context.textStyle.bodyMedium
              .copyWith(color: ThemeColors.light.mainBlack, fontSize: 14),
          decoration: InputDecoration(
            constraints: const BoxConstraints(
                // minHeight: 20,
                ),
            contentPadding: AppUtils.kPaddingAll12,
            errorText: showError ?? false ? errorText : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: AppUtils.kBorderRadius12,
              borderSide: BorderSide(
                color: ThemeColors.light.mainBlack.withOpacity(0.1),
              ),
            ),
            hintStyle: context.textStyle.regularCallOut.copyWith(
                color: ThemeColors.light.mainBlack.withOpacity(0.5),
                fontSize: 14),
            prefixIcon: prefixIcon,
            hintText: hintText,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
}
