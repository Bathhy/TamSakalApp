import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';

class DetailDepartView extends StatelessWidget {
  const DetailDepartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
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
                    image: NetworkImage(
                        'https://www.rupp.edu.kh/fe/factor4.0/images/img_stem_building.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          UniText(
            label: "Department of Information Technology Engineering",
            fontsize: 20,
            fontweight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UniText(
                label: "Overview:",
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
              UniText(
                label:
                    "The ITE program at the Faculty of Engineering, Royal University of Phnom Penh, trains students in high-demand Information Technology skills. Through a blend of theory and practical coursework, including elective courses like Artificial Intelligence and Game Development, students gain real-world problem-solving experience. Internships and hands-on projects prepare students for careers in the tech industry, emphasizing teamwork and critical thinking.",
                fontsize: 15,
              ),
            ],
          ),
          SizedBox(height: 10),
          UniText(label: "Major:", fontweight: FontWeight.bold, fontsize: 20),
          SizedBox(height: 15),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UniText(
                          label: " Data Science and Engineering",
                          fontsize: 13,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(height: 10),
                        UniText(
                          label: " Bacherlor Degree",
                          fontsize: 13,
                          fontweight: FontWeight.bold,
                          color: myBlueColor,
                        ),
                      ],
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
