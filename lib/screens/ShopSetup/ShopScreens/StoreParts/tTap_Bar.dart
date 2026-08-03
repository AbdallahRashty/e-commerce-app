import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs,});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        tabs: tabs,
        indicatorColor: Colors.blue,
        isScrollable: true,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.grey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
