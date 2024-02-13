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
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      height: 270,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 170,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: myBlueColor,
                            image: DecorationImage(
                                image: AssetImage(
                                  imageMIT,
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 170),
                      child: UniText(
                        label: "RUPP",
                        color: Colors.black,
                        fontsize: 20,
                        fontweight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 170),
                      child: Column(
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
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.black,
                              ),
                              UniText(label: "6:00AM - 8:45PM"),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                color: Colors.black,
                              ),
                              UniText(label: "500\$ - 2500\$"),
                            ],
                          ),
                          SizedBox(height: 5),
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
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
