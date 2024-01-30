import 'package:flutter/material.dart';
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
      home: Loginpage(),
    );
  }
}
