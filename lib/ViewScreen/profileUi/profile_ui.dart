import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/ViewScreen/profileUi/body_profile_ui.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class ProfileView extends StatefulWidget {
  ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final AuthController authcontrol = Get.put(AuthController());
  @override
  void initState() {
    authcontrol.getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(() => authcontrol.isLoggedIn.isFalse
              ? body()
              : Center(
                  child: Column(
                    children: [
                      Image.asset(
                        hamsad,
                        fit: BoxFit.fill,
                      ),
                      UniText(
                        label: "Please Login",
                        color: colorGold,
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.offAll(Loginpage());
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
                        ],
                      ),
                    ],
                  ),
                )),
        ],
      ),
    );
  }
}
