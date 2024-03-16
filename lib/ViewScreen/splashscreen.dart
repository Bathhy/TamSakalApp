import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(Loginpage());
    });
    return const Scaffold(
      backgroundColor: myBlueColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 105, top: 250),
            child: CircleAvatar(
              radius: 87,
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage(imageTSPNG),
              ),
            ),
          )
        ],
      ),
    );
  }
}
