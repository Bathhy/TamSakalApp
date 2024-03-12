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
      appBar: AppBar(
        backgroundColor: myBlueColor,
        centerTitle: true,
        title: UniText(label: "Account Setting", color: Colors.white),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white),
      ),
      body: Column(
        children: [
          _profileNamecard(),
          SizedBox(height: 20),
          _personalinforcard()
        ],
      ),
    );
  }

  Widget _personalinforcard() {
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
                        label: "First Name",
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      UniText(
                        label: "Nov",
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
                      UniText(
                        label: "iloveyou@gmail.com",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 25),
                      UniText(
                        label: "Address",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 15),
                      UniText(
                        label: "Country",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      UniText(
                        label: "Camboja",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 40),
                      UniText(
                        label: "Last Name",
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      UniText(
                        label: "Messi",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 15),
                      UniText(
                        label: "Phone Number",
                        fontsize: 11,
                        color: Colors.grey,
                      ),
                      UniText(
                        label: "0238899",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 60),
                      UniText(
                        label: "City/Province",
                        fontsize: 15,
                        color: Colors.grey,
                      ),
                      UniText(
                        label: "Phnom Penh",
                        fontsize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: TextButton(
                            onPressed: () {},
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
                            label: "Leonard",
                            fontsize: 25,
                            fontweight: FontWeight.bold,
                          ),
                          UniText(
                            label: "Cambodia",
                            fontsize: 18,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: TextButton(
                          onPressed: () {},
                          child: UniText(
                            label: "Edit",
                            color: myBlueColor,
                            fontsize: 16,
                          )),
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

  // Widget _AppbarProf() {
  //   return Container(
  //     height: Get.height * 0.14,
  //     decoration: BoxDecoration(
  //         shape: BoxShape.rectangle,
  //         color: myBlueColor,
  //         borderRadius: BorderRadius.only(
  //             bottomLeft: Radius.circular(20),
  //             bottomRight: Radius.circular(20))),
  //     child: Row(
  //       children: [
  //         IconButton(
  //             onPressed: () {
  //               Get.back();
  //             },
  //             icon: Icon(Icons.arrow_back_ios),
  //             color: Colors.white),
  //         Padding(
  //           padding: const EdgeInsets.only(top: 40, left: 20),
  //           child: UniText(
  //               label: "Welcome Sam",
  //               color: Colors.white,
  //               fontweight: FontWeight.bold,
  //               fontsize: 30),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
