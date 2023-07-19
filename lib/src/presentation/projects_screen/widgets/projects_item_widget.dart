// import 'package:flutter/material.dart';
// import 'package:project_maanagement_app/core/app_export.dart';

// // ignore: must_be_immutable
// class ProjectsItemWidget extends StatelessWidget {
//   const ProjectsItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: getPadding(
//         left: 12,
//         top: 13,
//         right: 12,
//         bottom: 13,
//       ),
//       decoration: AppDecoration.fill.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: getPadding(
//               left: 3,
//               top: 4,
//               right: 3,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: getPadding(
//                     top: 1,
//                   ),
//                   child: Text(
//                     "Liberty Pay Loan App",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: theme.textTheme.titleSmall,
//                   ),
//                 ),
//                 Container(
//                   width: getHorizontalSize(
//                     34,
//                   ),
//                   margin: getMargin(
//                     bottom: 3,
//                   ),
//                   padding: getPadding(
//                     left: 10,
//                     top: 1,
//                     right: 10,
//                     bottom: 1,
//                   ),
//                   decoration: AppDecoration.txtFill2.copyWith(
//                     borderRadius: BorderRadiusStyle.txtRoundedBorder2,
//                   ),
//                   child: Text(
//                     "4d",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: theme.textTheme.labelMedium,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: getPadding(
//               left: 3,
//               top: 9,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Team members",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: theme.textTheme.bodySmall,
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         top: 9,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             imagePath: ImageConstant.imgEllipse131,
//                             height: getSize(
//                               20,
//                             ),
//                             width: getSize(
//                               20,
//                             ),
//                             radius: BorderRadius.circular(
//                               getHorizontalSize(
//                                 10,
//                               ),
//                             ),
//                           ),
//                           CustomImageView(
//                             imagePath: ImageConstant.imgEllipse132,
//                             height: getSize(
//                               20,
//                             ),
//                             width: getSize(
//                               20,
//                             ),
//                             radius: BorderRadius.circular(
//                               getHorizontalSize(
//                                 10,
//                               ),
//                             ),
//                             margin: getMargin(
//                               left: 6,
//                             ),
//                           ),
//                           CustomImageView(
//                             imagePath: ImageConstant.imgEllipse133,
//                             height: getSize(
//                               20,
//                             ),
//                             width: getSize(
//                               20,
//                             ),
//                             radius: BorderRadius.circular(
//                               getHorizontalSize(
//                                 10,
//                               ),
//                             ),
//                             margin: getMargin(
//                               left: 6,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         top: 12,
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Card(
//                             clipBehavior: Clip.antiAlias,
//                             elevation: 0,
//                             margin: getMargin(
//                               top: 8,
//                             ),
//                             color: appTheme.deepOrange50,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadiusStyle.roundedBorder10,
//                             ),
//                             child: Container(
//                               height: getSize(
//                                 18,
//                               ),
//                               width: getSize(
//                                 18,
//                               ),
//                               padding: getPadding(
//                                 all: 3,
//                               ),
//                               decoration: AppDecoration.fill6.copyWith(
//                                 borderRadius: BorderRadiusStyle.roundedBorder10,
//                               ),
//                               child: Stack(
//                                 children: [
//                                   CustomImageView(
//                                     svgPath: ImageConstant
//                                         .imgUitcalenderDeepOrange300,
//                                     height: getSize(
//                                       10,
//                                     ),
//                                     width: getSize(
//                                       10,
//                                     ),
//                                     alignment: Alignment.bottomRight,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(
//                               left: 8,
//                               bottom: 2,
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       "Start",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: TextThemeHelper
//                                           .markProErrorContainerRegular,
//                                     ),
//                                     Padding(
//                                       padding: getPadding(
//                                         left: 48,
//                                       ),
//                                       child: Text(
//                                         "End",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: TextThemeHelper
//                                             .markProSecondaryContainerRegular,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     top: 2,
//                                     right: 2,
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         "27-3-2022",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: theme.textTheme.bodySmall,
//                                       ),
//                                       Padding(
//                                         padding: getPadding(
//                                           left: 14,
//                                         ),
//                                         child: Text(
//                                           "27-3-2022",
//                                           overflow: TextOverflow.ellipsis,
//                                           textAlign: TextAlign.left,
//                                           style: theme.textTheme.bodySmall,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: getSize(
//                     63,
//                   ),
//                   width: getSize(
//                     63,
//                   ),
//                   margin: getMargin(
//                     top: 12,
//                     bottom: 5,
//                   ),
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           height: getSize(
//                             46,
//                           ),
//                           width: getSize(
//                             46,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(
//                               getHorizontalSize(
//                                 23,
//                               ),
//                             ),
//                             border: Border.all(
//                               color: appTheme.lime200,
//                               width: getHorizontalSize(
//                                 1,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           height: getSize(
//                             63,
//                           ),
//                           width: getSize(
//                             63,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(
//                               getHorizontalSize(
//                                 31,
//                               ),
//                             ),
//                             border: Border.all(
//                               color: appTheme.lightGreenA700,
//                               width: getHorizontalSize(
//                                 5,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           "40%",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: TextThemeHelper.labelLargeLightgreenA700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
