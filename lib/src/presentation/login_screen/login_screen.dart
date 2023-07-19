import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/core/utils/image_constant.dart';
import 'package:project_management_app/src/core/utils/size_utils.dart';
import 'package:project_management_app/src/routes/app_routes.dart';
import 'package:project_management_app/src/widgets/app_logo.dart';
import 'package:project_management_app/src/widgets/back_button.dart';
import 'package:project_management_app/src/widgets/custom_elevated_button.dart';
import 'package:project_management_app/src/widgets/custom_icon_button.dart';
import 'package:project_management_app/src/widgets/custom_image_view.dart';
import 'package:project_management_app/src/widgets/custom_text_form_field.dart';
import 'package:project_management_app/src/widgets/spacing.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: getPadding(left: 23, top: 12, right: 23, bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacing.height(60),
              const Align(
                  alignment: Alignment.topLeft, child: BackButtonWidget()),
              const Spacing.height(60),
              const AppLogo(),
              Padding(
                  padding: getPadding(top: 19),
                  child: Text("Welcome Back !",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextThemeHelper.headlineSmallOnPrimary)),
              CustomTextFormField(
                  controller: emailController,
                  margin: getMargin(top: 33),
                  contentPadding: const EdgeInsets.only(
                      left: 24, top: 19, right: 24, bottom: 19),
                  textStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                  hintText: "Email",
                  hintStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress),
              CustomTextFormField(
                  controller: passwordController,
                  margin: getMargin(top: 16),
                  contentPadding:
                      const EdgeInsets.only(left: 24, top: 19, bottom: 19),
                  textStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                  hintText: "Password",
                  hintStyle: TextThemeHelper.bodyMediumSFProTextGray700,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                      margin:
                          getMargin(left: 30, top: 16, right: 24, bottom: 16),
                      child: CustomImageView(svgPath: ImageConstant.imgEye)),
                  suffixConstraints: BoxConstraints(maxHeight: (56)),
                  obscureText: true),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 1, top: 11),
                      child: Text("Forgot Password?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.bodySmallGray600))),
              Padding(
                  padding: getPadding(left: 1, top: 99, right: 1),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 6,
                          child: CustomElevatedButton(
                              text: "Sign in",
                               onTap: () => Navigator.pushNamed(
                                  context, AppRoutes.kDashboard),

                              margin: const EdgeInsets.only(top: 1),
                              buttonStyle: ButtonThemeHelper.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(double.maxFinite, (56)))),
                              buttonTextStyle:
                                  TextThemeHelper.titleMediumOnErrorContainer),
                        ),
                        Expanded(
                          flex: 2,
                          child: CustomIconButton(
                              height: 56,
                              width: 54,
                              margin: getMargin(left: 16, bottom: 1),
                              padding: getPadding(all: 11),
                              decoration: IconButtonStyleHelper.outlineOnError,
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgIonfingerprintoutline)),
                        )
                      ])),
              Padding(
                  padding: getPadding(left: 37, top: 11, right: 37, bottom: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: getPadding(bottom: 1),
                            child: Text("Don’t have an account?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelLarge!
                                    .copyWith(letterSpacing: (0.24)))),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, AppRoutes.kCreateAcc),
                          child: Padding(
                              padding: getPadding(left: 6),
                              child: Text("Create Account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextThemeHelper.titleSmallOnError)),
                        )
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
