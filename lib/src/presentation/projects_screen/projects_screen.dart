// import '../projects_screen/widgets/projects_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:project_maanagement_app/core/app_export.dart';
// import 'package:project_maanagement_app/presentation/iphone_11_pro_x_eight_page/iphone_11_pro_x_eight_page.dart';
// import 'package:project_maanagement_app/presentation/projects_one_page/projects_one_page.dart';
// import 'package:project_maanagement_app/widgets/custom_bottom_bar.dart';
// import 'package:project_maanagement_app/widgets/custom_icon_button.dart';

// // ignore_for_file: must_be_immutable
// class ProjectsScreen extends StatelessWidget {
//   ProjectsScreen({Key? key}) : super(key: key);

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: appTheme.gray5002,
//             body: Container(
//                 width: double.maxFinite,
//                 padding: getPadding(left: 24, right: 24),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       CustomIconButton(
//                           height: 40,
//                           width: 40,
//                           margin: getMargin(top: 12),
//                           padding: getPadding(all: 8),
//                           onTap: () {
//                             onTapBtnArrowleft(context);
//                           },
//                           child: CustomImageView(
//                               svgPath: ImageConstant.imgArrowleft)),
//                       Padding(
//                           padding: getPadding(top: 11),
//                           child: Text("Add task",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: theme.textTheme.headlineSmall)),
//                       Padding(
//                           padding: getPadding(top: 13),
//                           child: ListView.separated(
//                               physics: NeverScrollableScrollPhysics(),
//                               shrinkWrap: true,
//                               separatorBuilder: (context, index) {
//                                 return SizedBox(height: getVerticalSize(8));
//                               },
//                               itemCount: 4,
//                               itemBuilder: (context, index) {
//                                 return ProjectsItemWidget();
//                               })),
//                       CustomImageView(
//                           svgPath: ImageConstant.imgHomeGray700,
//                           height: getVerticalSize(22),
//                           width: getHorizontalSize(24),
//                           margin: getMargin(left: 12, top: 33))
//                     ])),
//             bottomNavigationBar:
//                 CustomBottomBar(onChanged: (BottomBarEnum type) {
//               Navigator.pushNamed(
//                   navigatorKey.currentContext!, getCurrentRoute(type));
//             })));
//   }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Homeonerror:
//         return AppRoutes.projectsOnePage;
//       case BottomBarEnum.Checkmarkonerror:
//         return AppRoutes.iphone11ProXEightPage;
//       case BottomBarEnum.Group452:
//         return "/";
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.projectsOnePage:
//         return ProjectsOnePage();
//       case AppRoutes.iphone11ProXEightPage:
//         return Iphone11ProXEightPage();
//       default:
//         return DefaultWidget();
//     }
//   }

//   /// Navigates back to the previous screen.
//   ///
//   /// This function takes a [BuildContext] object as a parameter, which is used
//   /// to navigate back to the previous screen.
//   onTapBtnArrowleft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
