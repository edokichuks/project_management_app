import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/general_widgets/general_widgets_exports.dart';

class AddStaffsWidget extends StatelessWidget {
  const AddStaffsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 2, top: 10, right: 3),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: getVerticalSize(24),
              width: getHorizontalSize(58),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse547,
                    height: getSize(24),
                    width: getSize(24),
                    radius: BorderRadius.circular(getHorizontalSize(12)),
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse548,
                    height: getSize(24),
                    width: getSize(24),
                    radius: BorderRadius.circular(getHorizontalSize(12)),
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse548,
                    height: getSize(24),
                    width: getSize(24),
                    radius: BorderRadius.circular(getHorizontalSize(12)),
                    alignment: Alignment.centerRight)
              ])),
          CustomImageView(
              svgPath: ImageConstant.imgPlus,
              height: getSize(20),
              width: getSize(20),
              margin: getMargin(top: 4))
        ]));
  }
}
