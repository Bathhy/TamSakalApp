import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/fav_uni_control.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class FavSchool extends StatelessWidget {
  const FavSchool({super.key});

  @override
  Widget build(BuildContext context) {
    final favcontroller _favcontrol = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UniText(
              label: "Favourite University",
              color: myBlueColor,
              fontweight: FontWeight.bold,
              fontsize: 25,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: _favcontrol.Unidata.length,
                itemBuilder: (context, index) {
                  final favUni = _favcontrol.Unidata[index];
                  return Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorgrey),
                      ),
                      Container(
                        height: 150,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: myBlueColor,
                          image: DecorationImage(
                              image: AssetImage(
                                favUni.imgUni,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: UniText(
                          label: favUni.nameUni,
                          color: Colors.black,
                          fontsize: 13,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140, top: 30),
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
                            SizedBox(height: 10),
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined),
                            color: Colors.black,
                            iconSize: 30,
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
