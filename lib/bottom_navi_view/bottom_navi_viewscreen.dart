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
              icon: compoBottomIcon(icon: Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: compoBottomIcon(
                icon: Icons.favorite_outline_outlined,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: compoBottomIcon(
                icon: Icons.search,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: compoBottomIcon(
                icon: Icons.person_2_outlined,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class compoBottomIcon extends StatelessWidget {
  compoBottomIcon({
    super.key,
    this.icon,
  });
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30,
    );
  }
}
