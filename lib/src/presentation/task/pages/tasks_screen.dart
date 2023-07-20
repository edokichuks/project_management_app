import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/widgets/back_button.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray5002,
      body: ListView(children: [
        BackButtonWidget(),
        Padding(
          padding: getPadding(top: 11),
          child: Text("Add task",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineSmall),
        ),
      ]),
    );
  }
}
