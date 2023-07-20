import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';

import '../../../general_widgets/general_widgets_exports.dart';

class ProgessRate extends StatelessWidget {
  const ProgessRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.center,
            child: Padding(
                padding: getPadding(left: 29, right: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 5, bottom: 1),
                          child: Text("Progress %",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextThemeHelper.labelLargeGray900cc)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup7378,
                          height: getSize(24),
                          width: getSize(24))
                    ]))),
        const TextWidget(text: '10'),
        const EdiitDivider(),
        const TextWidget(text: '20'),
        const EdiitDivider(),
        const TextWidget(text: '30'),
        const EdiitDivider(),
        const TextWidget(text: '40'),
        const EdiitDivider(),
        const TextWidget(text: '50'),
        const EdiitDivider(),
        const TextWidget(text: '60'),
        const EdiitDivider(),
        const TextWidget(text: '70'),
        const EdiitDivider(),
        const TextWidget(text: '80'),
        const EdiitDivider(),
        const TextWidget(text: '90'),
        const EdiitDivider(),
        const TextWidget(text: '100'),
        const Spacing.smallHeight(),
      ],
    );
  }
}

class EdiitDivider extends StatelessWidget {
  const EdiitDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(top: 15),
        child: SizedBox(
            width: getHorizontalSize(180),
            child: Divider(
                height: getVerticalSize(1),
                thickness: getVerticalSize(1),
                color: theme.colorScheme.onPrimaryContainer)));
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 32, top: 11),
        child: Text("$text%",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodyMedium));
  }
}
