import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/controller/bottom_control.dart';

class BottomNaviView extends StatelessWidget {
  BottomNaviView({super.key});
  final BottomNaviController _botcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _botcontroller.Screen[_botcontroller.currentInd.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: myBlueColor,
          currentIndex: _botcontroller.currentInd.value,
          onTap: (index) {
            _botcontroller.pageclick(index);
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_rounded,
                size: 30,
              ),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
