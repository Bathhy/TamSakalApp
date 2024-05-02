import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/Local_db/local_db.dart';
import 'package:practiceloginlayout/model/profile_mode.dart';

class ProfileEditingController extends GetxController {
  var listinfoUser = <ProfileModel>[].obs;
  final localProfileview = TamsakalDB.instance;
  TextEditingController UsernameEditing = TextEditingController();
  TextEditingController SelectCountry = TextEditingController();
  TextEditingController EmailAddressTextControl = TextEditingController();
  TextEditingController PhoneNumberTextControl = TextEditingController();
  TextEditingController CityTextControl = TextEditingController();

  TextEditingController AddressTextControl = TextEditingController();

  void addCountry(ProfileModel profileuser, String key) async {
    if (SelectCountry.text.isNotEmpty &&
        UsernameEditing.text.isNotEmpty &&
        EmailAddressTextControl.text.isNotEmpty &&
        PhoneNumberTextControl.text.isNotEmpty &&
        CityTextControl.text.isNotEmpty ) {
      final storeSelectCountry =
          await localProfileview.settingList(profileuser, key);
      if (storeSelectCountry) {
        print("Successs233xxxxx");
        Get.snackbar("Success", "Save Changes succesfully ",
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        print("Add already");
        Get.snackbar(
          "Add Already",
          "Your address already exist!",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else {
      print("Empty country");
      Get.snackbar("Failed", "Did not change your User information ",
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  void getProfileUserInfo(String key) async {
    final list = await localProfileview.gettingList(key);
    listinfoUser.value = list;
  }
}
