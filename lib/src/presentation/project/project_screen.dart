import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/presentation/project/widgets/projects_widget.dart';
import 'package:project_management_app/src/widgets/back_button.dart';
import 'package:project_management_app/src/widgets/general_widgets_exports.dart';
import 'package:project_management_app/src/widgets/spacing.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray5002,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
          children: [
            const Spacing.mediumHeight(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimensions.small),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: BackButtonWidget()),
                  CustomOutlinedButton(
                    text: "Create Project",
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.kCreateProjectScreen),
                    width: 100,
                    buttonStyle: ButtonThemeHelper.outlineOnError.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        100,
                      ),
                      getVerticalSize(
                        24,
                      ),
                    ))),
                    buttonTextStyle: TextThemeHelper.bodySmallOnError_1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(top: 11),
              child: Text("Projects",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineSmall),
            ),
            Padding(
              padding: getPadding(
                top: 13,
              ),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimensions.small),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppDimensions.medium);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ProjectsWidget();
                },
              ),
            ),
            const Spacing.mediumHeight()
          ],
        ),
      ),
    );
  }
}
