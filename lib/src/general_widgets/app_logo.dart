import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/app_export.dart';
import 'package:project_management_app/src/general_widgets/custom_image_view.dart';
import 'package:project_management_app/src/general_widgets/spacing.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
            imagePath: 'assets/images/png/app_logo.png', height: 21, width: 21),
        const Spacing.smallWidth(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "DO-IT",
              style: TextStyle(
                color: theme.colorScheme.onError,
                fontSize: 33,
                fontFamily: 'Mark Pro',
                fontWeight: FontWeight.w700,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 45,
                child: Divider(
                  height: 2,
                  thickness: 2,
                  color: theme.colorScheme.onError,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
