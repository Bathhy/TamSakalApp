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
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
