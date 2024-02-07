import 'package:flutter/material.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/controller/page_control.dart';
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
                Icons.notifications,
                color: Colors.white,
              ))
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: drawerMeth(),
      body: ListView(
        children: [
          Card(
            elevation: 4.0,
            color: myBlueColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: SizedBox(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back Joji",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.40,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: PageView.builder(
                itemCount: _pageview.allList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: Get.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_pageview.allList[index].imgUni),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
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

  Widget drawerMeth() {
    return Drawer(
      backgroundColor: myBlueColor,
      child: ListView(
        children: [
          SizedBox(height: 150),
          ListTile(
            iconColor: Colors.white,
            leading: Icon(Icons.account_circle_outlined),
            title: const Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.white, indent: 60.0, endIndent: 58.0),
          ListTile(
            iconColor: Colors.white,
            leading: Icon(Icons.add_shopping_cart),
            title: const Text(
              'Orders',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.white, indent: 60.0, endIndent: 58.0),
          ListTile(
            iconColor: Colors.white,
            leading: Icon(Icons.sell_outlined),
            title: const Text(
              'Offer and Promo',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.white, indent: 60.0, endIndent: 58.0),
          ListTile(
            iconColor: Colors.white,
            leading: Icon(Icons.sticky_note_2_outlined),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.white, indent: 60.0, endIndent: 58.0),
          ListTile(
            iconColor: Colors.white,
            leading: Icon(Icons.security_outlined),
            title: const Text(
              'Security',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          SizedBox(height: 100),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.white,
            ),
            label: Text(
              'Sign-Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
