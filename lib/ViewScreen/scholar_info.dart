import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';

class ScholarshipInfo extends StatelessWidget {
  const ScholarshipInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
        title: UniText(
          label: "Scholarships",
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      height: 30,
                    ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: Get.height * 0.4,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.amber)),
                  );
                }),
          )
        ],
      ),
    );
  }
}
