import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/bottom_navi_view/account_view/personal_prof_view.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/component_profil.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class body extends StatelessWidget {
  body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AuthController _acccontrol = Get.put(AuthController());
    return Column(
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
                child: Obx(
                  () => UniText(
                      label: "Welcome ${_acccontrol.Nameuser.value}",
                      color: colorGold,
                      fontweight: FontWeight.bold,
                      fontsize: 30),
                ),
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
            Obx(
              () => UniText(
                label: _acccontrol.Nameuser.value,
                fontsize: 20,
                fontweight: FontWeight.bold,
              ),
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
                  Obx(
                    () => UniText(
                        label: _acccontrol.emailuser.value,
                        color: Colors.black,
                        fontsize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: Get.height * 0.23,
          width: Get.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: colorgrey),
          child: Column(
            children: [
              CompoProfilView(
                  label: "Edit Profile",
                  icon: Icons.border_color,
                  iconbutton: Icons.arrow_forward_ios,
                  onpress: () {
                    Get.to(PersonalAccount());
                  }),
              SizedBox(
                height: 10,
              ),
              CompoProfilView(
                label: "Settings",
                icon: Icons.settings,
                iconbutton: Icons.arrow_forward_ios,
              ),
              SizedBox(
                height: 10,
              ),
              CompoProfilView(
                  label: "Logout",
                  icon: Icons.logout,
                  iconbutton: Icons.arrow_forward_ios,
                  iconbuttoncolor: Colors.red,
                  iconcolor: Colors.red,
                  onpress: () => _acccontrol.logout()),
            ],
          ),
        ),
      ],
    );
  }
}
