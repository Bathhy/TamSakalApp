import 'package:flutter/material.dart';
import 'package:practiceloginlayout/ViewScreen/detail_view.dart';
import 'package:practiceloginlayout/ViewScreen/profile_ui.dart';
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
      initialRoute: '/Detail',
      getPages: [
        GetPage(name: '/Profilview', page: () => ProfileView()),
        GetPage(name: '/Login', page: () => Loginpage()),
        GetPage(name: '/Detail', page: () => DetailUniView()),
      ],
    );
  }
}
