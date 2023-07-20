import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/presentation/home/model/home_container_model.dart';
import 'package:do_it/src/general_widgets/custom_icon_button.dart';
import 'package:do_it/src/general_widgets/custom_image_view.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
    required this.model,
  });
  final HomeContainerModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 158,
      padding: const EdgeInsets.all(AppDimensions.medium),
      decoration: BoxDecoration(
        color: model.containerColor,
        borderRadius: BorderRadius.circular(AppDimensions.medium),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                height: 33,
                width: 33,
                padding: getPadding(
                  all: 7,
                ),
                decoration: IconButtonStyleHelper.fillBluegray100
                    .copyWith(color: model.checkColor),
                child: CustomImageView(
                  svgPath: model.imagePath,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 68,
                  top: 1,
                  bottom: 5,
                ),
                child: Text(
                  model.itemsNum,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          Text(
            model.text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextThemeHelper.labelLargeBlack900,
          ),
        ],
      ),
    );
  }
}
