import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/presentation/project/widgets/project_divider.dart';
import 'package:do_it/src/general_widgets/general_widgets_exports.dart';

class ProjectDates extends StatelessWidget {
  const ProjectDates({
    super.key,
    required this.date,
    required this.size,
    required this.hint,
  });

  final ValueNotifier<String> date;
  final Size size;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        date.value = await openDatePicker(context: context);
      },
      child: SizedBox(
        width: size.width * 0.4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hint,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.labelLarge),
            const Spacing.mediumHeight(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(svgPath: ImageConstant.imgUitcalender),
                const Spacing.smallWidth(),
                Text(date.value.isEmpty ? '0000-00-00' : date.value),
              ],
            ),
            const Spacing.tinyHeight(),
            const ProjectDivider(),
          ],
        ),
      ),
    );
  }
}
