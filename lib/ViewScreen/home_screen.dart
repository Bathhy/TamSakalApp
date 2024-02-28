import 'package:flutter/material.dart';
import 'package:practiceloginlayout/ViewScreen/category_detail.dart';
import 'package:practiceloginlayout/ViewScreen/notification_view.dart';
import 'package:practiceloginlayout/ViewScreen/scholar_info.dart';
import 'package:practiceloginlayout/bottom_navi_view/account_view/personal_prof_view.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/textformfield_compo.dart';
import 'package:practiceloginlayout/controller/page_control.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final PageviewController _pageview = Get.find();
  // final HomeController _homecontroller = Get.find();

  @override
  void initState() {
    _pageview.getItemList();
    _pageview.getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int _activepage = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "University Pedia",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 4, 6, 168),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Get.to(NotificationView());
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 7,
                left: 0,
                bottom: 23,
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.red,
                  child: Center(
                    child: UniText(
                        label: "1",
                        color: Colors.white,
                        fontweight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: drawerMeth(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          SizedBox(height: 15),
          _pageviewMeth(),
          SizedBox(height: 15),
          UniText(
            label:
                "University Pedia is a website for students who have just graduated from the 12th grade and want to find a university or information about university majors to continue their studies.",
            color: Colors.black,
            fontsize: 20,
            fontweight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          UniText(
            label: "Here is the most popular Degree in Cambodia",
            fontsize: 15,
            fontweight: FontWeight.bold,
            color: myBlueColor,
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Get.to(CategoryDetailview());
            },
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemCount: _pageview.CategoryUniList.length,
              itemBuilder: (context, index) {
                final cate = _pageview.CategoryUniList[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 233, 233, 240),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Container(
                    child: LayoutBuilder(
                      builder: (context, constraint) {
                        return Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                cate.imgCateuni,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 160,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      cate.CateUniname,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageviewMeth() {
    int _activepage = 0;
    return SizedBox(
      height: Get.height * 0.35,
      child: Container(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: _pageview.allList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(_pageview.allList[index].imgUni),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.black, width: 5),
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
    );
  }

  Widget drawerMeth() {
    return Drawer(
      backgroundColor: myBlueColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(""),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Unilife), fit: BoxFit.fill)),
          ),
          SizedBox(height: 10),
          CompoDrawer(
              label: "Profile",
              LeadIcon: Icons.person_2_rounded,
              ontap: () {
                Get.to(PersonalAccount());
              }),
          // Divider(color: Colors.white, indent: 60.0, endIndent: 58.0),
          CompoDrawer(
            label: "Scholarship",
            LeadIcon: Icons.sell_rounded,
            ontap: () {
              Get.to(ScholarshipInfo());
            },
          ),
        ],
      ),
    );
  }
}
