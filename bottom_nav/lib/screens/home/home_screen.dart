import 'package:bottom_nav/screens/alert/alert_screen.dart';
import 'package:bottom_nav/screens/home/home_controller.dart';
import 'package:bottom_nav/screens/news/news_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// IndexedStackを使ったボトムナビゲーションの実装
/// 参考: https://medium.com/teamartisans/bottom-navigation-bar-in-flutter-using-getx-a59f274b616c
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                NewsScreen(),
                AlertScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.sportscourt),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell),
                label: 'Alerts',
              ),
            ],
          ),
        );
      },
    );
  }
}
