import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/general_widgets/general_widgets_exports.dart';

class AddTags extends StatelessWidget {
  const AddTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 2, top: 9, right: 83),
        child: Row(children: [
          SizedBox(
              height: getVerticalSize(18),
              width: getHorizontalSize(68),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgCamera,
                    height: getVerticalSize(18),
                    width: getHorizontalSize(68),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: getPadding(left: 10, bottom: 2),
                        child: Text("Design",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                TextThemeHelper.labelMediumSecondaryContainer)))
              ])),
          Container(
              height: getVerticalSize(18),
              width: getHorizontalSize(68),
              margin: getMargin(left: 18),
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgCameraOrange100,
                    height: getVerticalSize(18),
                    width: getHorizontalSize(68),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: getPadding(left: 7, top: 2),
                        child: Text("Front end",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.labelMediumYellow800)))
              ])),
          Container(
              height: getVerticalSize(18),
              width: getHorizontalSize(68),
              margin: getMargin(left: 21),
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgCameraBlue100,
                    height: getVerticalSize(18),
                    width: getHorizontalSize(68),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: getPadding(left: 10, top: 2),
                        child: Text("Backend",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.labelMediumOnError)))
              ]))
        ]));
  }
}
