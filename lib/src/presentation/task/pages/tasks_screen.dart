import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/presentation/home/widgets/add_task_widget.dart';
import 'package:project_management_app/src/general_widgets/back_button.dart';
import 'package:project_management_app/src/general_widgets/spacing.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  List<double> rand = [];

  @override
  Widget build(BuildContext context) {
    getrandNum();
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
              child: Text("Add task",
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
                  final randomProgress = rand[index];
                  return AddTaskWidget(progress: randomProgress);
                },
              ),
            ),
            const Spacing.mediumHeight()
          ],
        ),
      ),
    );
  }

  void getrandNum() {
    for (int x = 0; x < 6; x++) {
      double random = Random().nextDouble() * 100;
      rand.add(random);
    }
  }
}
