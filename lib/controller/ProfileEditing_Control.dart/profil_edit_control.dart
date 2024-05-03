import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:practiceloginlayout/Local_db/local_db.dart';
import 'package:practiceloginlayout/model/profile_mode.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileEditingController extends GetxController {
  RxList listinfoUser = <ProfileModel>[].obs;
  final localProfileview = TamsakalDB.instance;
  TextEditingController UsernameEditing = TextEditingController();
  TextEditingController SelectCountry = TextEditingController();
  TextEditingController EmailAddressTextControl = TextEditingController();
  TextEditingController PhoneNumberTextControl = TextEditingController();
  TextEditingController CityTextControl = TextEditingController();

  TextEditingController AddressTextControl = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    getProfileUserInfo(UserInfo);
  }

  void EditUserInfo(ProfileModel profileuser, String key) async {
    if (SelectCountry.text.isNotEmpty &&
        UsernameEditing.text.isNotEmpty &&
        EmailAddressTextControl.text.isNotEmpty &&
        PhoneNumberTextControl.text.isNotEmpty &&
        CityTextControl.text.isNotEmpty &&
        AddressTextControl.text.isNotEmpty) {
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
    update();
  }

  void getProfileUserInfo(String key) async {
    final list = await localProfileview.gettingList(key);
    print("Retrieved list: $list");
    try {
      if (list != null) {
        listinfoUser.value = list;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void ClearLocalProfille() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(UserInfo);
  }
}
