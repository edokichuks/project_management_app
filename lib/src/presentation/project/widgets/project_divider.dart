import 'package:flutter/material.dart';
import 'package:do_it/src/core/app_export.dart';

class ProjectDivider extends StatelessWidget {
  const ProjectDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: getVerticalSize(1),
        thickness: getVerticalSize(1),
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        indent: getHorizontalSize(1));
  }
}
