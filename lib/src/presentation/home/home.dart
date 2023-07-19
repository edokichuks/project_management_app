import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/core/utils/app_dimensions.dart';
import 'package:project_management_app/src/core/utils/image_constant.dart';
import 'package:project_management_app/src/core/utils/size_utils.dart';
import 'package:project_management_app/src/presentation/home/model/home_container_model.dart';
import 'package:project_management_app/src/presentation/home/widgets/home_container.dart';
import 'package:project_management_app/src/widgets/app_bar/custom_app_bar.dart';
import 'package:project_management_app/src/widgets/custom_icon_button.dart';
import 'package:project_management_app/src/widgets/custom_image_view.dart';
import 'package:project_management_app/src/widgets/custom_painters/progess.dart';
import 'package:project_management_app/src/widgets/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Spacing.mediumHeight(),
          const Spacing.mediumHeight(),
          const Spacing.mediumHeight(),
          Progress(progress: 60),
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
            color: Color(0XFFF8F8F8),
            width: MediaQuery.sizeOf(context).width,
            height: 300,
            child: Text('Hello'),
          )
        ],
      ),
    );
  }
}
