import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/utils/app_dimensions.dart';
import 'package:project_management_app/src/widgets/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
        physics: const BouncingScrollPhysics(),
        children: [
          const Spacing.mediumHeight(),
        ],
      ),
    );
  }
}
