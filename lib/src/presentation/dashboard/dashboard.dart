
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: const [
          Center(
            child: Text('Home'),
          ),
          Center(
            child: Text('Checkmark'),
          ),
          Center(
            child: Text('Profile'),
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 0?FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.plus,
          size: 40,
        ),
      ): null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          CustomNavigationBarItem(
            tooltipText: '',
            icon: Icon(Icons.home),
          ),
          CustomNavigationBarItem(
            tooltipText: '',
            icon: Icon(Icons.check),
          ),
          CustomNavigationBarItem(
            tooltipText: '',
            icon: Icon(Icons.person),
          ),
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
      height: 75,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.white,
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
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 18),
        child: isActive ? activeIcon ?? icon : icon,
      ),
    );
  }
}
