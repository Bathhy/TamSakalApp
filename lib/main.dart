import 'package:flutter/material.dart';
import 'package:practiceloginlayout/ViewScreen/detail_department.dart';
import 'package:practiceloginlayout/ViewScreen/detail_faculty.dart';
import 'package:practiceloginlayout/ViewScreen/detail_major.dart';
import 'package:practiceloginlayout/ViewScreen/profileUi/profile_ui.dart';
import 'package:practiceloginlayout/ViewScreen/splashscreen.dart';
import 'package:practiceloginlayout/bottom_navi_view/account_view/personal_prof_view.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/controller/ProfileEditing_Control.dart/binding_profile_control/main_binding_profile.dart';
import 'package:practiceloginlayout/controller/controller_binding/binding_control.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:get/get.dart';

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
        GetPage(
          name: '/Profilview',
          page: () => ProfileView(),
          // binding: ProfileControlBinding(),
        ),
        GetPage(name: '/DetailMajor', page: () => DetailMajorView()),
        GetPage(name: '/Login', page: () => Loginpage()),
        // GetPage(name: '/Detail', page: () => DetailUniView()),
        GetPage(name: '/DetailFacul', page: () => DetailFacultyView()),
        GetPage(name: '/DetailDepart', page: () => DetailDepartView()),
        GetPage(
          name: '/EditingProfile',
          page: () => PersonalAccount(),
          // binding: ProfileControlBinding(),
        ),
      ],
    );
  }
}
