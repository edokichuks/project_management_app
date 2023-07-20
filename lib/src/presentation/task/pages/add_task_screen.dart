import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:do_it/src/presentation/project/widgets/widgets_exports.dart';
import 'package:do_it/src/general_widgets/general_widgets_exports.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddTaskScreen extends HookConsumerWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  TextEditingController enddateController = TextEditingController();

  TextEditingController enddateoneController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    ValueNotifier<String> createdFrom = useState('');
    ValueNotifier<String> endTo = useState('');

    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.big),
          children: [
            const Spacing.height(50),
            const Align(
                alignment: Alignment.centerLeft, child: BackButtonWidget()),
            Padding(
                padding: getPadding(left: 2, top: 23),
                child: Text("Add Task",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall)),
            Padding(
                padding: getPadding(left: 3, top: 17, right: 2),
                child: const NameInput(
                  hintText: 'Task Name',
                )),
            const Spacing.height(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectDates(
                    date: createdFrom, size: size, hint: "Created (from)"),
                ProjectDates(date: endTo, size: size, hint: "End (to)"),
              ],
            ),
            Padding(
                padding: getPadding(left: 1, top: 26),
                child: Text("Add Staffs:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelLarge)),
            const AddStaffsWidget(),
            Padding(
                padding: getPadding(top: 10), child: const ProjectDivider()),
            Padding(
                padding: getPadding(top: 33),
                child: Text("Tags:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelLarge)),
            const AddTags(),
            Padding(padding: getPadding(top: 6), child: const ProjectDivider()),
            Padding(
                padding: getPadding(left: 2, top: 27),
                child: Text("Discription",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.labelLarge)),
            const Spacing.smallHeight(),
            const CustomTextFormField(
              maxLines: 4,
            ),
            CustomElevatedButton(
                text: "Add Task",
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.kTaskScreen),
                margin: getMargin(left: 2, top: 19, bottom: 5),
                buttonStyle: ButtonThemeHelper.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(56)))),
                buttonTextStyle: theme.textTheme.titleMedium!)
          ]),
    );
  }
}
