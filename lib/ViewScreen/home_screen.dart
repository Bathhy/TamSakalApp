import 'package:flutter/material.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/controller/page_control.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final PageviewController _pageview = Get.find();

  @override
  void initState() {
    _pageview.getItemList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.30,
            child: PageView.builder(
              itemCount: _pageview.allList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage(_pageview.allList[index].imgUni))),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "University Pedia is a website for students who have just graduated from the 12th grade and want to find a university or information about university majors to continue their studies.",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
