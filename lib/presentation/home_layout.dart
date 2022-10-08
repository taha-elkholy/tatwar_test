import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:tatware_test/presentation/pages/home/home_page.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  late PersistentTabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return const [
      HomePage(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppStrings.homeIcon,
          width: AppSizes.iconSize20,
          height: AppSizes.iconSize20,
          color: AppColors.blackColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppStrings.favIcon,
          width: AppSizes.iconSize20,
          height: AppSizes.iconSize20,
          color: AppColors.blackColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppStrings.walletIcon,
          width: AppSizes.iconSize20,
          height: AppSizes.iconSize20,
          color: AppColors.blackColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppStrings.profileIcon,
          width: AppSizes.iconSize20,
          height: AppSizes.iconSize20,
          color: AppColors.blackColor,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      bottomScreenMargin: 0,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          _currentIndex = _controller.index;
        });
      },
      backgroundColor: AppColors.whiteColor,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: AppSizes.duration200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: AppSizes.duration200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
