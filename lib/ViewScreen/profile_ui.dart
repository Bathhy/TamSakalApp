import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practiceloginlayout/bottom_navi_view/account_view/personal_prof_view.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/component_profil.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/singup/sign_up.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController _acccontrol = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(
            () => _acccontrol.isLoggedIn.value
                ? Center(
                    child: Column(
                      children: [
                        Image.asset(
                          hamsad,
                          fit: BoxFit.fill,
                        ),
                        UniText(
                          label: "Please Login or Sign Up to access this Data",
                          color: Colors.black,
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(Loginpage());
                              },
                              child: Container(
                                width: Get.width * 0.3,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: myBlueColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: UniText(
                                    label: "Login",
                                    color: Colors.white,
                                    fontsize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                Get.to(Signupscreen());
                              },
                              child: Container(
                                width: Get.width * 0.3,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: myBlueColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: UniText(
                                    label: "Sign Up",
                                    color: Colors.white,
                                    fontsize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : _body(),
          ),
        ],
      ),
    );
  }
}

class _body extends StatelessWidget {
  const _body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
