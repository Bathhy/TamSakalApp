import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/controller/splash_control.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final SplashscreenController _splashcontrol = Get.find();
  // @override
  // void initState() {
  //   // TODO: implement initState
   
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 1), () {
      _splashcontrol.checkLoginStat();
    });
    return Scaffold(
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
          ),
          // Container(
          //   child: ,
          // )
        ],
      ),
    );
  }
}
