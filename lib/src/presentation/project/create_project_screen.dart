import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_app/src/presentation/project/widgets/select_image.dart';
import 'package:project_management_app/src/presentation/project/widgets/widgets_exports.dart';
import 'package:project_management_app/src/general_widgets/general_widgets_exports.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CreateProjectScreen extends HookConsumerWidget {
  CreateProjectScreen({Key? key}) : super(key: key);

  TextEditingController enddateController = TextEditingController();

  TextEditingController enddateoneController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    ValueNotifier<String> createdFrom = useState('');
    ValueNotifier<String> endTo = useState('');
    ValueNotifier<List<File>> images = useState([]);
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
                        color: const Color(0XFFDADADA),
                        onTap: () => SelectImage.chooseImage(
                            context: context,
                            imageList: images,
                            type: ImageType.single),
                        imagePath: ImageConstant.imgEllipse546,
                        // file: images.value.isEmpty ?null:  images.value.last,
                        height: getSize(52),
                        width: getSize(52),
                        radius: BorderRadius.circular(getHorizontalSize(26))),
                    const Spacing.mediumWidth(),
                    const NameInput()
                  ])),
              const Spacing.height(49),
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
              Padding(
                  padding: getPadding(top: 6), child: const ProjectDivider()),
              Padding(
                  padding: getPadding(left: 2, top: 27),
                  child: Text("Discription",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.labelLarge)),
              const Spacing.smallHeight(),
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
