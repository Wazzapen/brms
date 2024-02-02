import 'package:bms/users/fragments/completed_task_fragment_screen.dart';
import 'package:bms/users/fragments/home_fragment_screen.dart';
import 'package:bms/users/fragments/profile_fragment_screen.dart';
import 'package:bms/users/fragments/request_fragment_screen.dart';
import 'package:bms/users/userPreferences/currentuser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardOfFragments extends StatelessWidget {
  CurrentUser _rememberCurrentUser = Get.put(CurrentUser());
  //const ({Key? key}): super(key:key);

  List<Widget> _fragmentScreens = [
    HomeFragmentScreen(),
    RequestFragmentScreen(),
    CompletedTaskFragmentScreen(),
    ProfileFragmentScreen(),
  ];

  List _navigationButtonsProperties = [
    {
      "active_icon": Icons.home,
      "non_active_icon": Icons.home_outlined,
      "labeled": "Home",
    },
    {
      "active_icon": Icons.favorite,
      "non_active_icon": Icons.favorite_border,
      "labeled": "Home",
    },
    {
      "active_icon": Icons.person,
      "non_active_icon": Icons.person_2_outlined,
      "labeled": "Home",
    },
  ];

  RxInt _indexNumber = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CurrentUser(),
      initState: (currentState) {
        _rememberCurrentUser.getUserInfo();
      },
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Obx(() => _fragmentScreens[_indexNumber.value]),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              currentIndex: _indexNumber.value,
              onTap: (value) {
                _indexNumber.value = value;
              },
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white24,
              items: List.generate(4, (index) {
                var navBtnProperty = _navigationButtonsProperties[index];
                return BottomNavigationBarItem(
                  backgroundColor: Colors.black,
                  icon: Icon(navBtnProperty["non_active_icon"]),
                  activeIcon: Icon(navBtnProperty["active_icon"]),
                  label: navBtnProperty["label"],
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
