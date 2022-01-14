import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/navigation/custom_animated_bottom.dart';
import 'package:getx_bottom_navigation/pages/add/add_page.dart';
import 'package:getx_bottom_navigation/pages/dashboard/dashboard_controler.dart';
import 'package:getx_bottom_navigation/pages/home/home_page.dart';
import 'package:getx_bottom_navigation/pages/messages/messages_page.dart';
import 'package:getx_bottom_navigation/pages/users/users_page.dart';

class MyDashBoard extends StatefulWidget {

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  // int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller){
          return Scaffold(
              body: SafeArea(
                child: IndexedStack(
                  index: controller.tabinIndex,
                  children: [
                    HomePage(),
                    UsersPage(),
                    MessagesPage(),
                    AddPage(),
                  ],
                ),
              ),
              bottomNavigationBar: CustomAnimatedBottomBar(
                containerHeight: 70,
                backgroundColor: Colors.white,
                selectedIndex: controller.tabinIndex,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: controller.chancheTabIndex,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    icon: Icon(Icons.apps),
                    title: Text('Home'),
                    activeColor: Colors.green,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.people),
                    title: Text('Users'),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.message),
                    title: Text(
                      'Messages ',
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('Settings'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
          );
        });
  }
}