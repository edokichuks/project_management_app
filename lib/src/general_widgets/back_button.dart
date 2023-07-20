import 'package:flutter/material.dart';
import 'package:do_it/src/core/utils/image_constant.dart';
import 'package:do_it/src/core/utils/size_utils.dart';
import 'package:do_it/src/general_widgets/custom_icon_button.dart';
import 'package:do_it/src/general_widgets/custom_image_view.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
        height: 40,
        width: 40,
        margin: getMargin(left: 1),
        padding: getPadding(all: 8),
        onTap: () {
          Navigator.pop(context);
        },
        child: CustomImageView(svgPath: ImageConstant.imgArrowleft));
  }
}
