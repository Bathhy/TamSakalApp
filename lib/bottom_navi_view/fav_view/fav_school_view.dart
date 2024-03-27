import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/fav_uni_control.dart';
import 'package:google_fonts/google_fonts.dart';

class FavSchool extends StatelessWidget {
  const FavSchool({super.key});

  @override
  Widget build(BuildContext context) {
    final favcontroller _favcontrol = Get.put(favcontroller());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Padding(
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
              _favcontrol.FavDb.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 150,
                            color: colorGold,
                          ),
                          Text(
                            "No favourite University yet",
                            style: GoogleFonts.nunito(
                                color: colorGold,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            'Try to add your favourite University here',
                            style: GoogleFonts.nunito(
                                color: colorGold,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  : Obx(
                      () => Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                          itemCount: _favcontrol.FavDb.length,
                          itemBuilder: (context, index) {
                            final favUni = _favcontrol.FavDb[index];
                            return Slidable(
                              endActionPane: ActionPane(
                                motion: BehindMotion(),
                                extentRatio: 1,
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      _favcontrol.deletebyIndex(favUni);
                                    },
                                    backgroundColor: Colors.white,
                                    icon: Icons.delete,
                                    foregroundColor: Colors.red,
                                    spacing: 1,
                                    autoClose: true,
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ],
                              ),
                              child: Stack(
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
                                    padding: const EdgeInsets.only(
                                        left: 140, top: 30),
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
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
