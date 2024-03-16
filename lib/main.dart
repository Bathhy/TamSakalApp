import 'package:flutter/material.dart';
import 'package:practiceloginlayout/ViewScreen/detail_department.dart';
import 'package:practiceloginlayout/ViewScreen/detail_faculty.dart';
import 'package:practiceloginlayout/ViewScreen/detail_major.dart';
import 'package:practiceloginlayout/ViewScreen/detail_view.dart';
import 'package:practiceloginlayout/ViewScreen/home_screen.dart';
import 'package:practiceloginlayout/ViewScreen/profile_ui.dart';
import 'package:practiceloginlayout/ViewScreen/splashscreen.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/controller/controller_binding/binding_control.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/singup/sign_up.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: UniBingding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splashscreen()),
        GetPage(name: '/bottom', page: () => BottomNaviView()),
        GetPage(name: '/Profilview', page: () => ProfileView()),
        GetPage(name: '/DetailMajor', page: () => DetailMajorView()),
        GetPage(name: '/Login', page: () => Loginpage()),
        // GetPage(name: '/Detail', page: () => DetailUniView()),
        GetPage(name: '/DetailFacul', page: () => DetailFacultyView()),
        GetPage(name: '/DetailDepart', page: () => DetailDepartView()),
      ],
    );
  }
}
