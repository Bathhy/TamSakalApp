import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: Get.height * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: myBlueColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    height: Get.height * 0.07,
                    width: Get.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        iconColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: Get.height * 0.2,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                      ),
                      UniText(
                        label: "Royal University of Phnom Penh",
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                      Row(
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
                          SizedBox(width: 30),
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                color: Colors.black,
                              ),
                              UniText(label: "500\$ - 2500\$"),
                            ],
                          ),
                          SizedBox(width: 30),
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
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
