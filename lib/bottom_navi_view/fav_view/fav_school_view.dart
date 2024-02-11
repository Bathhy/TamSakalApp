import 'package:flutter/material.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:get/get.dart';

class FavSchool extends StatelessWidget {
  const FavSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          UniText(
            label: "Favourite University",
            color: myBlueColor,
            fontweight: FontWeight.bold,
            fontsize: 25,
          ),
        ],
      ),
    );
  }
}
