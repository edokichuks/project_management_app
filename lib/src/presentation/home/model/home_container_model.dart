import 'package:flutter/material.dart';
import 'package:project_management_app/src/core/utils/image_constant.dart';

import '../../../core/app_export.dart';

class HomeContainerModel {
  final String text;
  final String itemsNum;
  final Color containerColor;
  final Color checkColor;
  final String imagePath;

  HomeContainerModel(
      {required this.text,
      required this.itemsNum,
      required this.containerColor,
      required this.imagePath,
      required this.checkColor});
}

List<HomeContainerModel> dummyData = [
  HomeContainerModel(
      text: 'Projects',
      itemsNum: '14',
      containerColor: appTheme.gray100,
      imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
      checkColor: appTheme.yellow800),
  HomeContainerModel(
      text: 'Tasks',
      itemsNum: '10',
      containerColor: appTheme.gray5001,
      imagePath: ImageConstant.imgFluentclipboarOnerrorcontainer,
      checkColor: theme.colorScheme.onError),
  HomeContainerModel(
      text: 'Completed Task',
      itemsNum: '20',
      containerColor: appTheme.green50,
      imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
      checkColor: const Color(0XFF12B76A)),
  HomeContainerModel(
      text: 'Overdue Task',
      itemsNum: '2',
      containerColor: appTheme.gray10001,
      imagePath: ImageConstant.imgCarbontaskremove,
      checkColor: appTheme.blueGray100),
];
