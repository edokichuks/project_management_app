import 'dart:math';

import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/presentation/home/model/home_container_model.dart';
import 'package:do_it/src/presentation/home/widgets/add_task_widget.dart';
import 'package:do_it/src/presentation/home/widgets/home_container.dart';
import 'package:do_it/src/general_widgets/app_bar/custom_app_bar.dart';
import 'package:do_it/src/general_widgets/custom_icon_button.dart';
import 'package:do_it/src/general_widgets/custom_image_view.dart';

import 'package:do_it/src/general_widgets/spacing.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<double> rand = [];
  @override
  Widget build(BuildContext context) {
    getrandNum();
    final isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      appBar: CustomAppBar(
        height: 75,
        title: Padding(
          padding: getPadding(
            left: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi Dexter ",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 1,
                    right: 6,
                  ),
                  child: Text(
                    "Welcome onboard",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextThemeHelper.bodySmallOnError12,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          CustomIconButton(
            height: 34,
            width: 34,
            margin: getMargin(
              left: 24,
              top: 4,
              right: 24,
              bottom: 17,
            ),
            padding: getPadding(
              all: 4,
            ),
            decoration: IconButtonStyleHelper.fillBlue5001,
            child: CustomImageView(
              svgPath: ImageConstant.imgNotification,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Spacing.smallHeight(),
          GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: AppDimensions.medium,
                crossAxisSpacing: AppDimensions.medium,
                childAspectRatio: isLandScape ? 2.1 : 1.1),
            itemCount: dummyData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final signleItem = dummyData[index];
              return HomeContainer(
                model: signleItem,
              );
            },
          ),
          const Spacing.bigHeight(),
          Container(
            color: const Color(0XFFF8F8F8),
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 21,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Task in Progress",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextThemeHelper.titleMediumBlack900,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.kTaskScreen),
                        child: Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: Text(
                            "See all",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.titleSmallOnError,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 13,
                  ),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.big),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppDimensions.medium);
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      final randomProgress = rand[index];
                      return AddTaskWidget(
                        progress: randomProgress,
                      );
                    },
                  ),
                ),
                const Spacing.mediumHeight()
              ],
            ),
          ),
        ],
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
