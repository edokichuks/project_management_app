import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/general_widgets/general_widgets_exports.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
          margin: getMargin(right: 17),
          contentPadding: getPadding(right: 22),
          textStyle: TextThemeHelper.labelLargeGray800,
          hintText: "Project name",
          hintStyle: TextThemeHelper.labelLargeGray800,
          defaultBorderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          enabledBorderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          focusedBorderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          disabledBorderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer),
    );
  }
}
