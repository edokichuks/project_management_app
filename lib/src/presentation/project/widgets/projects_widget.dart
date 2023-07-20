import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/general_widgets_exports.dart';

// ignore: must_be_immutable
class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 13,
        top: 15,
        right: 13,
        bottom: 15,
      ),
      decoration: AppDecoration.fill.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 3,
              top: 2,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse550,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 4,
                    bottom: 1,
                  ),
                  child: Text(
                    "Liberty Pay ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                const Spacer(),
                Container(
                  width: getHorizontalSize(
                    34,
                  ),
                  margin: getMargin(
                    top: 6,
                    bottom: 2,
                  ),
                  padding: getPadding(
                    left: 10,
                    top: 1,
                    right: 10,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.txtFill1.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                  ),
                  child: Text(
                    "4d",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 3,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Start",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.bodySmallErrorContainer,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 42,
                          ),
                          child: Text(
                            "End",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.bodySmallSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "27-3-2022",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: Text(
                              "27-3-2022",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomOutlinedButton(
                  text: "Add Task",
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.kAddTaskScreen),
                  margin: getMargin(
                    top: 4,
                  ),
                  width: 74,
                  buttonStyle: ButtonThemeHelper.outlineOnError.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      66,
                    ),
                    getVerticalSize(
                      21,
                    ),
                  ))),
                  buttonTextStyle: TextThemeHelper.bodySmallOnError_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
