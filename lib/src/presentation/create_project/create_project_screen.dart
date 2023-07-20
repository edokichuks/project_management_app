import 'package:flutter/material.dart';
import 'package:project_management_app/src/widgets/general_widgets_exports.dart';
import 'package:project_management_app/src/core/app_export.dart';

class CreateProjectScreen extends StatelessWidget {
  CreateProjectScreen({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController enddateController = TextEditingController();

  TextEditingController enddateoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 22, top: 12, right: 22, bottom: 12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BackButtonWidget(),
                  Padding(
                      padding: getPadding(left: 2, top: 23),
                      child: Text("Create Project",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.headlineSmall)),
                  Padding(
                      padding: getPadding(left: 3, top: 17, right: 2),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse546,
                                height: getSize(52),
                                width: getSize(52),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(26))),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Project Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("Liberty Pay",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              TextThemeHelper.titleSmallBold)),
                                  Padding(
                                      padding: getPadding(top: 6),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1)))
                                ])
                          ])),
                  Padding(
                      padding: getPadding(left: 2, top: 49),
                      child: Row(children: [
                        Text("Created (from)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge),
                        Padding(
                            padding: getPadding(left: 94),
                            child: Text("End (to)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelLarge))
                      ])),
                  Padding(
                      padding: getPadding(left: 2, top: 16, right: 2),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: CustomTextFormField(
                                  
                                    controller: enddateController,
                                    margin: getMargin(right: 17),
                                    contentPadding: getPadding(right: 22),
                                    textStyle:
                                        TextThemeHelper.labelLargeGray800,
                                    hintText: "27-3-2022",
                                    hintStyle:
                                        TextThemeHelper.labelLargeGray800,
                                    textInputAction: TextInputAction.next,
                                    prefix: Container(
                                        margin: getMargin(
                                            top: 1, right: 8, bottom: 10),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUitcalender)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(25)),
                                    defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer)),
                            Expanded(
                                child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: enddateoneController,
                                    margin: getMargin(left: 17, top: 1),
                                    contentPadding: getPadding(right: 29),
                                    textStyle:
                                        TextThemeHelper.labelLargeGray800,
                                    hintText: "27-3-2022",
                                    hintStyle:
                                        TextThemeHelper.labelLargeGray800,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 6,
                                            top: 1,
                                            right: 9,
                                            bottom: 9),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUitcalender)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(24)),
                                    defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer,
                                    disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .underLineOnPrimaryContainer))
                          ])),
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
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse547,
                                          height: getSize(24),
                                          width: getSize(24),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(12)),
                                          alignment: Alignment.centerLeft),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse548,
                                          height: getSize(24),
                                          width: getSize(24),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(12)),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse548,
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
                      padding: getPadding(top: 10),
                      child: Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          indent: getHorizontalSize(1))),
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
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCamera,
                                      height: getVerticalSize(18),
                                      width: getHorizontalSize(68),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 10, bottom: 2),
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
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
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
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
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
                                          style: TextThemeHelper
                                              .labelMediumOnError)))
                            ]))
                      ])),
                  Padding(
                      padding: getPadding(top: 6),
                      child: Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1))),
                  Padding(
                      padding: getPadding(left: 2, top: 27),
                      child: Text("Discription",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.labelLarge)),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(327),
                              margin: getMargin(left: 2, top: 7),
                              padding: getPadding(
                                  left: 13, top: 10, right: 13, bottom: 10),
                              decoration: AppDecoration.outline3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(276),
                                        margin:
                                            getMargin(right: 24, bottom: 15),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, conse jose  adipiscing elit. Vestibulum semper  llmauris as lacus, turpis  Lorem ipsum dolor sit amet, conse ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextThemeHelper
                                                .bodySmallGray700))
                                  ])))),
                  CustomElevatedButton(
                      text: "Create Project",
                      margin: getMargin(left: 2, top: 19, bottom: 5),
                      buttonStyle: ButtonThemeHelper.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(56)))),
                      buttonTextStyle: theme.textTheme.titleMedium!)
                ])),
      ),
    );
  }
}
