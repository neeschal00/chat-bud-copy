import 'package:chat_bud/Pages/Messages/view_screen.dart';
import 'package:chat_bud/Pages/Search/search_view.dart';
import 'package:chat_bud/Pages/Settingscb/setting_page.dart';
import 'package:chat_bud/Pages/dashboard/dashboard_controller.dart';
import 'package:chat_bud/Profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  ViewMessage(),
                  SearchPage(),
                  Setting_page(),
                  Profile(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_2),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings),
                  label: 'Settings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_alt_circle_fill),
                  label: 'Account',
                ),
              ],
            ));
      },
    );
  }
}
