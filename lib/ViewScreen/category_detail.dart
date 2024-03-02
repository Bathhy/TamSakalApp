import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class CategoryDetailview extends StatelessWidget {
  const CategoryDetailview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UniText(
                label: "Information Technology",
                fontsize: 20,
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Get.to(DetailUniView());
                  },
                  child: Container(
                    height: Get.height * 0.3,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorgrey),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          height: Get.height * 0.2,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(imageUHS),
                                  fit: BoxFit.cover)),
                        ),
                        UniText(
                          label: "Royal University of Phnom Penh",
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
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
                              SizedBox(width: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.black,
                                  ),
                                  UniText(label: "500\$ - 2500\$"),
                                ],
                              ),
                              SizedBox(width: 15),
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
                    ),
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
