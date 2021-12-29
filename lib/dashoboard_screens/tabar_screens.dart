
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:untitled2/dashoboard_screens/Profile_screen.dart';
import 'package:untitled2/dashoboard_screens/Store_screen.dart';
import 'package:untitled2/dashoboard_screens/home_screen.dart';
import 'package:untitled2/login_register_screens/login_screen.dart';


class tab_bar_screen extends StatefulWidget {

  const tab_bar_screen({Key? key}) : super(key: key);

  @override
  _tab_bar_screenState createState() => _tab_bar_screenState();
}

class _tab_bar_screenState extends State<tab_bar_screen> {

  List<Widget> _buildScreens() {
    return [
      home_screen(),
      Store_screen(),
      Profile_screen(),
    ];
  }


    PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon:Image.asset( 'image/homeicon.png'),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary:Color.fromRGBO(104, 119, 244, 1),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset( 'image/store.png',color: Colors.green,),
        title: ("Store"),
        activeColorPrimary: CupertinoColors. activeGreen,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors. activeGreen,

      ),
      PersistentBottomNavBarItem(
        icon: Image.asset( 'image/profileicon.png',color: Colors.blue,),
        title: ("Profile"),
        activeColorPrimary: Colors.blue.shade700,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
  @override

  Widget build(BuildContext context) {

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
