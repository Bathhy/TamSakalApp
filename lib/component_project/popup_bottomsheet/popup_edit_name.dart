import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/app_button_compo.dart';
import 'package:practiceloginlayout/component_project/textformfield_compo.dart';
import 'package:practiceloginlayout/controller/ProfileEditing_Control.dart/profil_edit_control.dart';
import 'package:practiceloginlayout/model/profile_mode.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';

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
                UniText(label: "Enter your Personal Information:"),
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
                  controller: _profilcontrol.SelectCountry,
                  label: "Pick your Country",
                  icondata: Icons.search,
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
                        onSelect: (Country country) {
                          _profilcontrol.SelectCountry.text = country.name;
                          print(
                              'Select country ==>> ${_profilcontrol.SelectCountry.text}');
                        });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Enter your Email Address",
                  controller: _profilcontrol.EmailAddressTextControl,
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Enter your Phone Number",
                  controller: _profilcontrol.PhoneNumberTextControl,
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Enter your City or Province",
                  controller: _profilcontrol.CityTextControl,
                ),
                SizedBox(
                  height: 20,
                ),
                textformNoIcon(
                  label: "Enter your Address",
                  controller: _profilcontrol.AddressTextControl,
                ),
                SizedBox(height: 20),
                AppButton(
                  label: "Save Changes",
                  onTab: () {
                    _profilcontrol.addCountry(
                        ProfileModel(
                            country: _profilcontrol.SelectCountry.text,
                            Name: _profilcontrol.UsernameEditing.text,
                            Email: _profilcontrol.EmailAddressTextControl.text,
                            city: _profilcontrol.CityTextControl.text,
                            Phonenumber:
                                _profilcontrol.PhoneNumberTextControl.text,),
                        UserInfo);
                  },
                )
              ],
            ),
          ));
}
