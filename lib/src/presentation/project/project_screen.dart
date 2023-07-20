import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/presentation/project/widgets/projects_widget.dart';
import 'package:project_management_app/src/widgets/back_button.dart';
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
            const Align(
                alignment: Alignment.centerLeft, child: BackButtonWidget()),
            Padding(
              padding: getPadding(top: 11),
              child: Text("Project",
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
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ProjectsWidget();
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
