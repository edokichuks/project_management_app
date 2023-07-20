import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/core/utils/image_constant.dart';
import 'package:do_it/src/core/utils/size_utils.dart';
import 'package:do_it/src/presentation/onboarding_screen/widgets/stacked_images.dart';
import 'package:do_it/src/routes/app_routes.dart';
import 'package:do_it/src/general_widgets/app_logo.dart';
import 'package:do_it/src/general_widgets/custom_elevated_button.dart';
import 'package:do_it/src/general_widgets/custom_icon_button.dart';
import 'package:do_it/src/general_widgets/custom_image_view.dart';
import 'package:do_it/src/general_widgets/spacing.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: SingleChildScrollView(
        padding: getPadding(
          left: 24,
          top: 43,
          right: 24,
          bottom: 16,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacing.height(60),
            const SizedBox(
              height: 43,
              width: 134,
              child: AppLogo(),
            ),
            CustomIconButton(
              height: 50,
              width: 50,
              margin: getMargin(
                top: 80,
              ),
              alignment: Alignment.center,
              decoration: IconButtonStyleHelper.outlineBlack900,
              child: CustomImageView(
                svgPath: ImageConstant.imgVolume,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
            const ImageStack(),
            Padding(
              padding: getPadding(
                top: 60,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Just ",
                      style: TextStyle(
                        color: appTheme.black900,
                        fontSize: 24,
                        fontFamily: 'Mark Pro',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "DO-IT",
                      style: TextStyle(
                        color: theme.colorScheme.onError,
                        fontSize: 24,
                        fontFamily: 'Mark Pro',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            CustomElevatedButton(
                text: "Create account",
                margin: const EdgeInsets.only(top: 14),
                buttonTextStyle: theme.textTheme.titleMedium!,
                onTap: () => Navigator.pushNamed(context, AppRoutes.kCreateAcc),
                buttonStyle: ButtonThemeHelper.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                  const Size(
                    double.maxFinite,
                    56,
                  ),
                ))),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      "Already have an account?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          TextThemeHelper.bodyMediumSFProTextGray30001.copyWith(
                        letterSpacing: 0.24,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.kLoginScreen),
                    child: Padding(
                      padding: getPadding(
                        left: 11,
                      ),
                      child: Text(
                        "Sign in",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextThemeHelper.titleSmallOnError,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
