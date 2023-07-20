import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/general_widgets/back_button.dart';
import 'package:project_management_app/src/general_widgets/custom_elevated_button.dart';
import 'package:project_management_app/src/general_widgets/custom_image_view.dart';
import 'package:project_management_app/src/general_widgets/custom_text_form_field.dart';
import 'package:project_management_app/src/general_widgets/spacing.dart';

// ignore_for_file: must_be_immutable
class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacing.height(60),
            Container(
              padding: getPadding(left: 23, top: 12, right: 23, bottom: 12),
              decoration: AppDecoration.fill
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BackButtonWidget(),
                  Container(
                      width: 100,
                      margin: getMargin(left: 1, top: 16),
                      child: Text("Create \nAccount",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.headlineSmallSFProDisplay)),
                  Container(
                      width: (195),
                      margin: getMargin(left: 1, top: 16),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    "Please fill the details below to\ncreate a ",
                                style: TextStyle(
                                    color: theme.colorScheme.onPrimary,
                                    fontSize: 14,
                                    fontFamily: 'Mark Pro',
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: "DO-IT",
                                style: TextStyle(
                                    color: theme.colorScheme.onError,
                                    fontSize: 14,
                                    fontFamily: 'Mark Pro',
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: " account",
                                style: TextStyle(
                                    color: theme.colorScheme.onError,
                                    fontSize: 14,
                                    fontFamily: 'Mark Pro',
                                    fontWeight: FontWeight.w400))
                          ]),
                          textAlign: TextAlign.left)),
                  CustomTextFormField(
                      controller: nameController,
                      margin: getMargin(left: 1, top: 25),
                      contentPadding: const EdgeInsets.only(
                          left: 24, top: 18, right: 24, bottom: 18),
                      textStyle: TextThemeHelper.titleSmallGray700,
                      hintText: "Name",
                      hintStyle: TextThemeHelper.titleSmallGray700,
                      textInputAction: TextInputAction.next),
                  CustomTextFormField(
                      controller: emailController,
                      margin: getMargin(left: 1, top: 24),
                      contentPadding: const EdgeInsets.only(
                          left: 24, top: 19, right: 24, bottom: 19),
                      textStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      hintText: "Email",
                      hintStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress),
                  CustomTextFormField(
                      margin: getMargin(left: 1, top: 24),
                      contentPadding: const EdgeInsets.only(
                          left: 24, top: 19, right: 24, bottom: 19),
                      textStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      hintText: "Mobile Number",
                      suffix: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgUser,
                              height: 24,
                              width: 32),
                          // const Spacing.smallWidth(),
                          CustomImageView(
                              svgPath: ImageConstant.imgPolygon2,
                              height: 14,
                              width: 14,
                              margin: getMargin(
                                left: 4,
                                right: 4,
                              ))
                        ],
                      ),
                      hintStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.phone),
                  CustomTextFormField(
                      controller: passwordController,
                      margin: getMargin(left: 1, top: 24),
                      contentPadding: const EdgeInsets.only(
                          left: 24, top: 19, bottom: 19),
                      textStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      hintStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 16, right: 24, bottom: 16),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgEye)),
                      suffixConstraints: const BoxConstraints(maxHeight: 56),
                      obscureText: true),
                  Padding(
                      padding: getPadding(left: 1, top: 10),
                      child: Text("Password must be atleast 8 characters",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.bodySmallGray400)),
                  CustomElevatedButton(
                      text: "Create account",
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.kDashboard),
                      margin: const EdgeInsets.only(left: 1, top: 69),
                      buttonStyle: ButtonThemeHelper.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              const Size(double.maxFinite, 56))),
                      buttonTextStyle: theme.textTheme.titleMedium!),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(top: 8, bottom: 79),
                      child: Text(
                        "Privacy policy",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextThemeHelper.bodySmallGray400.copyWith(
                            letterSpacing: 0.24,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
