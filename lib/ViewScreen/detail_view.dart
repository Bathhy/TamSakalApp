import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';
import 'package:practiceloginlayout/ViewScreen/detail_faculty.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/fav_uni_control.dart';

class DetailUniView extends StatelessWidget {
  final RepoUni repo;
  const DetailUniView(this.repo);

  @override
  Widget build(BuildContext context) {
    final favcontroller _favcontrol = Get.find();
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: GetBuilder<favcontroller>(
              builder: (_) {
                return Icon(
                  _favcontrol.toggleFavourite(repo)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: Colors.white,
                );
              },
            ),
          )
        ],
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
                    image: AssetImage(repo.UniCateImg), fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          UniText(
            label: repo.nameUni,
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
                  UniText(label: repo.Price),
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
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UniText(
                label: "Overview:",
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
              UniText(
                label: repo.Overview,
                fontsize: 15,
              ),
            ],
          ),
          SizedBox(height: 10),
          UniText(label: "Faculty:", fontweight: FontWeight.bold, fontsize: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(DetailFacultyView());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorgrey),
                  child: Column(
                    children: [
                      Container(
                        height: Get.height * 0.18,
                        width: Get.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      UniText(
                        label: "Faculty of Engineering",
                        fontsize: 12,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
