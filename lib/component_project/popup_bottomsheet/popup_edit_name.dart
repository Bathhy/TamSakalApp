import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/component_project/textformfield_compo.dart';
import 'package:practiceloginlayout/controller/ProfileEditing_Control.dart/profil_edit_control.dart';

Future PopUpEditUsername(BuildContext context) {
  final ProfileEditingController _profilcontrol =
      Get.put(ProfileEditingController());
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (context) => SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: Get.width * 0.20,
                      height: Get.height * 0.01,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Enter your Name",
                  controller: _profilcontrol.UsernameEditing,
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Pick Country",
                  controller: _profilcontrol.UsernameEditing,
                  onpress: () {
                    showCountryPicker(
                        context: context,
                        countryListTheme: CountryListThemeData(
                          flagSize: 25,
                          backgroundColor: Colors.white,
                          textStyle:
                              TextStyle(fontSize: 16, color: Colors.blueGrey),
                          bottomSheetHeight: 500,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          inputDecoration: InputDecoration(),
                        ),
                        onSelect: (Country country) {});
                  },
                ),
              ],
            ),
          ));
}
