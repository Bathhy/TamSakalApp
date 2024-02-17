import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class PersonalAccount extends StatelessWidget {
  const PersonalAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * 0.14,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: myBlueColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: UniText(
                      label: "Welcome Sam",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 30),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UniText(label: "Account Setting", fontweight: FontWeight.bold),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height * 0.14,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: colorgrey),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          imageGS,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UniText(
                            label: "Leonard",
                            fontsize: 30,
                            fontweight: FontWeight.bold,
                          ),
                          UniText(
                            label: "Cambodia",
                            fontsize: 18,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
