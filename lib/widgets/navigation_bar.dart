import 'package:flutter/material.dart';
import 'package:old_care/screens/mainprofile_screen.dart';
import 'package:old_care/screens/newpost_screen.dart';
import 'package:old_care/screens/search_screen.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/tab_bar.dart';
import 'package:old_care/widgets/tab_bar2.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class navigationBar extends StatefulWidget {
  final BuildContext context;
  const navigationBar({super.key, required this.context});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  final _controller = PersistentTabController(initialIndex: 0);

  final List<PersistentBottomNavBarItem> _items = [
    PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        activeColorPrimary: Colours.secondaryColor,
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        activeColorPrimary: Colours.secondaryColor,
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        inactiveIcon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        activeColorPrimary: Colours.secondaryColor,
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(
          Icons.notifications_outlined,
        ),
        activeColorPrimary: Colours.secondaryColor,
        inactiveColorPrimary: Colors.black),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
        activeColorPrimary: Colours.secondaryColor,
        inactiveColorPrimary: Colors.black)
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> _buildScreens = [
      TabBar2(),
      SearchScreen(),
      NewPostScreen(),
      NotificationTabBAr(),
      ProfileScreen()
    ];
    return PersistentTabView(
      context,
      screens: _buildScreens,
      items: _items,
      backgroundColor: Colors.white,
      controller: _controller,
      decoration: NavBarDecoration(
          colorBehindNavBar: Colors.black,
          borderRadius: BorderRadius.circular(4)),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
