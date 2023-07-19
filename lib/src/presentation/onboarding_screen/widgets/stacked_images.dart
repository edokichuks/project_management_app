import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/core/utils/image_constant.dart';
import 'package:project_management_app/src/core/utils/size_utils.dart';
import 'package:project_management_app/src/theme/app_decoration.dart';
import 'package:project_management_app/src/widgets/custom_icon_button.dart';
import 'package:project_management_app/src/widgets/custom_image_view.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: 293,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img6748removebgpreview,
            height: 184,
            width: 260,
            alignment: Alignment.bottomLeft,
            margin: getMargin(
              left: 12,
            ),
          ),
          CustomIconButton(
            height: 50,
            width: 50,
            padding: getPadding(
              all: 13,
            ),
            decoration: IconButtonStyleHelper.outlineBlack900,
            alignment: Alignment.topRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgGroup255,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: getPadding(
                left: 10,
                top: 9,
                right: 10,
                bottom: 9,
              ),
              decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 28,
                    margin: getMargin(
                      top: 3,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 7,
                            width: 28,
                            decoration: BoxDecoration(
                              color: appTheme.lightBlue800.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(
                                2,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: 8,
                          width: 8,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 28,
                    margin: getMargin(
                      top: 1,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 7,
                            width: 28,
                            decoration: BoxDecoration(
                              color: appTheme.blue300,
                              borderRadius: BorderRadius.circular(
                                2,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: 8,
                          width: 8,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 28,
                    margin: getMargin(
                      top: 1,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 7,
                            width: 28,
                            decoration: BoxDecoration(
                              color: appTheme.blue50,
                              borderRadius: BorderRadius.circular(
                                2,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCheckmarkGray70001,
                          height: 8,
                          width: 8,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
