import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_management_app/src/presentation/home/home.dart';
import 'package:project_management_app/src/presentation/todo_screen.dart';
import 'package:project_management_app/src/widgets/custom_image_view.dart';
import 'package:project_management_app/src/routes/routes_exports.dart';
import '../../core/app_export.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children:  [
           HomeScreen(),
       CreateProjectScreen(),
         const TodoScreen(),
        ],
      ),
      floatingActionButton: _currentIndex == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: theme.colorScheme.onError,
              child: const Icon(
                CupertinoIcons.plus,
                color: Colors.white,
                size: 40,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const CustomNavigationBarItem(
            tooltipText: 'Home',
            icon: Icon(
              Icons.home_outlined,
              size: AppDimensions.large,
            ),
            activeIcon: Icon(
              Icons.home,
              size: AppDimensions.large,
            ),
          ),
          CustomNavigationBarItem(
              tooltipText: 'Task',
              icon: CustomImageView(
                svgPath: 'assets/images/svg/unselected_check.svg',
                height: AppDimensions.big,
                width: AppDimensions.big,
              ),
              activeIcon: CustomImageView(
                svgPath: 'assets/images/svg/selected_check.svg',
                height: AppDimensions.big,
                width: AppDimensions.big,
              )),
          CustomNavigationBarItem(
              tooltipText: 'Profile',
              activeIcon: const Icon(
                Icons.person,
                size: AppDimensions.large,
              ),
              icon: CustomImageView(
                height: AppDimensions.big,
                width: AppDimensions.big,
                imagePath: 'assets/images/png/person.png',
              )),
        ],
      ),
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    this.activeColor,
    this.inactiveColor,
    this.selectedLabelTextStyle,
    this.unselectedLabelTextStyle,
    this.onTap,
    this.showLabel = true,
    required this.items,
    this.currentIndex = 0,
    this.elevation = 10,
  });
  final ValueChanged<int>? onTap;
  final int currentIndex;
  final Color? activeColor;
  final Color? inactiveColor;
  final TextStyle? selectedLabelTextStyle;
  final TextStyle? unselectedLabelTextStyle;
  final bool showLabel;
  final double elevation;
  final List<CustomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 72,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: appTheme.blueGray50, //Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final item = items[index];
            return CupertinoButton(
              onPressed: () {
                onTap?.call(index);
              },
              padding: EdgeInsets.zero,
              child: _Tile(
                tooltipText: item.tooltipText,
                icon: item.icon,
                showLabel: showLabel,
                isActive: index == currentIndex,
                activeColor: activeColor,
                activeIcon: item.activeIcon,
                inactiveColor: inactiveColor,
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CustomNavigationBarItem {
  const CustomNavigationBarItem({
    required this.icon,
    required this.tooltipText,
    this.activeIcon,
  });

  final Widget icon;
  final Widget? activeIcon;
  final String tooltipText;
}
     
class _Tile extends StatelessWidget {
  const _Tile({
    required this.icon,
    this.activeIcon,
    required this.showLabel,
    required this.isActive,
    this.activeColor,
    this.inactiveColor,
    required this.tooltipText,
  });

  final Widget icon;
  final Widget? activeIcon;
  final bool showLabel;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final String tooltipText;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipText,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4, top: 8),
        child: isActive ? activeIcon ?? icon : icon,
      ),
    );
  }
}
