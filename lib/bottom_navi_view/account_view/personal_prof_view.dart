import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/popup_bottomsheet/popup_edit_name.dart';
import 'package:practiceloginlayout/controller/ProfileEditing_Control.dart/profil_edit_control.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  final ProfileEditingController _profilcontrol =
      Get.put(ProfileEditingController());
  final AuthController _authController = Get.find();
  // @override
  // void initState() {
  //   _profilcontrol.getProfileUserInfo(UserInfo);
  //   print("  ${_profilcontrol.listinfoUser.first.Phonenumber}");
  //   _authController.getUserInfo();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
        centerTitle: true,
        title: UniText(
          label: "Account Setting",
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white),
      ),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 1));
            _profilcontrol.getProfileUserInfo(UserInfo);
          },
          child: ListView(
            children: [
              _profileNamecard(),
              SizedBox(height: 20),
              _personalinforcard()
            ],
          ),
        ),
      ),
    );
  }

  Widget _personalinforcard() {
    final ProfileEditingController _profilcontrol =
        Get.put(ProfileEditingController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            height: Get.height * 0.50,
            width: Get.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: colorgrey),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UniText(
                        label: "Personal Information",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 15),
                      UniText(
                        label: "Email Address",
                        fontsize: 11,
                        fontweight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      Obx(
                        () => UniText(
                          label: _profilcontrol.listinfoUser.isNotEmpty
                              ? (_profilcontrol.listinfoUser.first.Email ??
                                  _authController.emailuser.value)
                              : _authController.emailuser.value,
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      UniText(
                        label: "Address",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      Obx(
                        () => UniText(
                          label: _profilcontrol.listinfoUser.isNotEmpty
                              ? _profilcontrol.listinfoUser.first.Address ??
                                  "No Country Select"
                              : "No Address information",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      UniText(
                        label: "Country",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      Obx(
                        () => UniText(
                          label: _profilcontrol.listinfoUser.isNotEmpty
                              ? _profilcontrol.listinfoUser.first.country ??
                                  "No Country Select"
                              : "No Country Select",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 40),
                      UniText(
                        label: "Phone Number",
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      Obx(
                        () => UniText(
                          label: _profilcontrol.listinfoUser.isNotEmpty
                              ? _profilcontrol.listinfoUser.first.Phonenumber ??
                                  "No Phone number "
                              : "No Phone number ",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 75),
                      UniText(
                        label: "City/Province",
                        fontsize: 15,
                        color: Colors.grey,
                      ),
                      Obx(
                        () => UniText(
                          label: _profilcontrol.listinfoUser.isNotEmpty
                              ? _profilcontrol.listinfoUser.first.city ??
                                  "No City information"
                              : "No City information",
                          fontsize: 15,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: TextButton(
                            onPressed: () async {
                              await Get.to(PopUpEditUsername(context));
                            },
                            child: UniText(
                              label: "Edit",
                              color: myBlueColor,
                              fontsize: 16,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileNamecard() {
    final ProfileEditingController _profilecontrol =
        Get.put(ProfileEditingController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: Get.height * 0.12,
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
                          imagelogic,
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
                            label: _profilcontrol.listinfoUser.isNotEmpty
                                ? (_profilcontrol.listinfoUser.first.Name ??
                                    _authController.Nameuser.value)
                                : _authController.Nameuser.value,
                            fontsize: 25,
                            fontweight: FontWeight.bold,
                          ),
                          UniText(
                            label: _profilecontrol.listinfoUser.isNotEmpty
                                ? _profilecontrol.listinfoUser.first.country ??
                                    "No Country Select"
                                : "No Country Select",
                            fontsize: 18,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
