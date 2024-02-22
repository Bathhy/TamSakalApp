import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class DetailMajorView extends StatelessWidget {
  const DetailMajorView({super.key});

  @override
  Widget build(BuildContext context) {
    int _activepage = 0;
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
                        'https://d1m75rqqgidzqn.cloudfront.net/wp-data/2019/09/11134058/What-is-data-science-2.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          UniText(
            label: " Bachelor Information Technology Engineering",
            fontsize: 18,
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
                    "The Bachelor of Data Science and Engineering program at the Royal University of Phnom Penh's Faculty of Engineering offers top-tier education in extracting value from data assets. With a focus on real-world problem-solving, students engage in practicum experiences from year 2 to year 4, gaining vital skills for post-graduation employment. The curriculum emphasizes data exploration, analytics, processing, business analysis, and machine learning/artificial intelligence (ML/AI), preparing students for diverse roles in industry, commerce, governance, and research.",
                fontsize: 15,
              ),
            ],
          ),
          SizedBox(height: 10),
          UniText(
              label: "Curriculumn :",
              fontweight: FontWeight.bold,
              fontsize: 20),
          SizedBox(
            height: Get.height * 0.35,
            child: Container(
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imageCurDSE),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  ),
                  Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      height: 10,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                            3,
                            (index) {
                              return Container(
                                padding: EdgeInsets.only(right: 6),
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor: _activepage == index
                                      ? myBlueColor
                                      : Colors.white,
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
