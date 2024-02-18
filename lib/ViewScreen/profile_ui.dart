import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/component_profil.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorgrey,
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
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(70),
                    elevation: 10,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        imagelogic,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade700,
                      radius: 20,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.border_color),
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              UniText(
                label: "Leonard",
                fontsize: 20,
                fontweight: FontWeight.bold,
              ),
              Container(
                height: Get.height * 0.06,
                width: Get.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UniText(
                        label: "Mylove@gmail.com",
                        color: Colors.black,
                        fontsize: 18),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: Get.height * 0.4,
            width: Get.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                CompoProfilView(
                  label: "Edit Profile",
                  icon: Icons.border_color,
                  iconbutton: Icons.arrow_forward_ios,
                ),
                CompoProfilView(
                  label: "Settings",
                  icon: Icons.settings,
                  iconbutton: Icons.arrow_forward_ios,
                ),
                CompoProfilView(
                  label: "Logout",
                  icon: Icons.logout,
                  iconbutton: Icons.arrow_forward_ios,
                  iconbuttoncolor: Colors.red,
                  iconcolor: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
