import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class DetailUniView extends StatelessWidget {
  const DetailUniView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Container(
            height: Get.height * 0.3,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(imageRUPP), fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          UniText(
            label: "Royal University of Phnom Penh (RUPP)",
            fontsize: 20,
            fontweight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.domain,
                    color: Colors.black,
                  ),
                  UniText(label: "University"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  UniText(label: "500\$ - 2500\$"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Colors.black,
                  ),
                  UniText(label: "Phnom Penh"),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          UniText(label: "Faculty:", fontweight: FontWeight.bold, fontsize: 20),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: colorgrey),
                child: Column(
                  children: [
                    Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    UniText(
                      label: "Faculty of Engineering",
                      fontsize: 15,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
