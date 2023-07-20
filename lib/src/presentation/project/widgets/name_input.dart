import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/general_widgets/general_widgets_exports.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        margin: getMargin(right: 17),
        contentPadding: getPadding(right: 22),
        textStyle: TextThemeHelper.labelLargeGray800,
        hintText: hintText,
        hintStyle: TextThemeHelper.labelLargeGray800,
        defaultBorderDecoration:
            TextFormFieldStyleHelper.underLineOnPrimaryContainer,
        enabledBorderDecoration:
            TextFormFieldStyleHelper.underLineOnPrimaryContainer,
        focusedBorderDecoration:
            TextFormFieldStyleHelper.underLineOnPrimaryContainer,
        disabledBorderDecoration:
            TextFormFieldStyleHelper.underLineOnPrimaryContainer);
  }
}
