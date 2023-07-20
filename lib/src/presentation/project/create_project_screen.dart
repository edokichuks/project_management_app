import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_app/src/widgets/general_widgets_exports.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/project_divider.dart';

class CreateProjectScreen extends HookConsumerWidget {
  CreateProjectScreen({Key? key}) : super(key: key);

  TextEditingController enddateController = TextEditingController();

  TextEditingController enddateoneController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    ValueNotifier<String> createdFrom = useState('');
    ValueNotifier<String> endTo = useState('');
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppDimensions.big),
            children: [
              const Spacing.mediumHeight(),
              const Align(
                  alignment: Alignment.centerLeft, child: BackButtonWidget()),
              Padding(
                  padding: getPadding(left: 2, top: 23),
                  child: Text("Create Project",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headlineSmall)),
              Padding(
                  padding: getPadding(left: 3, top: 17, right: 2),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse546,
                        height: getSize(52),
                        width: getSize(52),
                        radius: BorderRadius.circular(getHorizontalSize(26))),
                    const Spacing.mediumWidth(),
                    Expanded(
                      child: CustomTextFormField(
                          margin: getMargin(right: 17),
                          contentPadding: getPadding(right: 22),
                          textStyle: TextThemeHelper.labelLargeGray800,
                          hintText: "Project name",
                          hintStyle: TextThemeHelper.labelLargeGray800,
                          defaultBorderDecoration: TextFormFieldStyleHelper
                              .underLineOnPrimaryContainer,
                          enabledBorderDecoration: TextFormFieldStyleHelper
                              .underLineOnPrimaryContainer,
                          focusedBorderDecoration: TextFormFieldStyleHelper
                              .underLineOnPrimaryContainer,
                          disabledBorderDecoration: TextFormFieldStyleHelper
                              .underLineOnPrimaryContainer),
                    )
                  ])),
              const Spacing.height(49),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () async {
                      createdFrom.value =
                          await openDatePicker(context: context);
                    },
                    child: SizedBox(
                      width: size.width * 0.4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Created (from)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge),
                          const Spacing.mediumHeight(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUitcalender),
                              const Spacing.smallWidth(),
                              Text(createdFrom.value.isEmpty
                                  ? '19-02-23'
                                  : createdFrom.value),
                            ],
                          ),
                          const Spacing.tinyHeight(),
                          const ProjectDivider(),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      endTo.value = await openDatePicker(context: context);
                    },
                    child: SizedBox(
                      width: size.width * 0.4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("End (to)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelLarge),
                          const Spacing.mediumHeight(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUitcalender),
                              const Spacing.smallWidth(),
                              Text(endTo.value.isEmpty
                                  ? '10-12-23'
                                  : endTo.value),
                            ],
                          ),
                          const Spacing.tinyHeight(),
                          const ProjectDivider(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: getPadding(left: 1, top: 26),
                  child: Text("Add Staffs:",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelLarge)),
              Padding(
                  padding: getPadding(left: 2, top: 10, right: 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: getVerticalSize(24),
                            width: getHorizontalSize(58),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse547,
                                  height: getSize(24),
                                  width: getSize(24),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  alignment: Alignment.centerLeft),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse548,
                                  height: getSize(24),
                                  width: getSize(24),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse548,
                                  height: getSize(24),
                                  width: getSize(24),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  alignment: Alignment.centerRight)
                            ])),
                        CustomImageView(
                            svgPath: ImageConstant.imgPlus,
                            height: getSize(20),
                            width: getSize(20),
                            margin: getMargin(top: 4))
                      ])),
              Padding(
                  padding: getPadding(top: 10), child: const ProjectDivider()),
              Padding(
                  padding: getPadding(top: 33),
                  child: Text("Tags:",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelLarge)),
              Padding(
                  padding: getPadding(left: 2, top: 9, right: 83),
                  child: Row(children: [
                    SizedBox(
                        height: getVerticalSize(18),
                        width: getHorizontalSize(68),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
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
                                      style: TextThemeHelper
                                          .labelMediumSecondaryContainer)))
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
                                      style: TextThemeHelper
                                          .labelMediumYellow800)))
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
                                      style:
                                          TextThemeHelper.labelMediumOnError)))
                        ]))
                  ])),
              Padding(
                  padding: getPadding(top: 6), child: const ProjectDivider()),
              Padding(
                  padding: getPadding(left: 2, top: 27),
                  child: Text("Discription",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelLarge)),
              CustomTextFormField(
                maxLines: 4,
              ),
              CustomElevatedButton(
                  text: "Create Project",
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.kProjectScreen),
                  margin: getMargin(left: 2, top: 19, bottom: 5),
                  buttonStyle: ButtonThemeHelper.fillPrimary.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(56)))),
                  buttonTextStyle: theme.textTheme.titleMedium!)
            ]),
      ),
    );
  }
}
