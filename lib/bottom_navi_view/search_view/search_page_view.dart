import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practiceloginlayout/ViewScreen/detail_view.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/search_control.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchingController _searchcontrol = Get.find();
  void initState() {
    _searchcontrol.search("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          _SearchEngine(),
          SizedBox(height: 5),
          Obx(
            () => _searchcontrol.dataList.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          size: 150,
                          color: Colors.grey[400],
                        ),
                        Text(
                          'Search not Found',
                          style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Try searching the item with \n a different keyword.',
                          style: GoogleFonts.nunito(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  )
                : _DisplayUni(),
          ),
        ],
      ),
    );
  }

  Widget _SearchEngine() {
    return Container(
      height: Get.height * 0.15,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: myBlueColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              height: Get.height * 0.07,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextFormField(
                onChanged: (String value) {
                  _searchcontrol.search(value);
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  iconColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _DisplayUni() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: _searchcontrol.unilist.length,
        itemBuilder: (context, index) {
          final SearchUni = _searchcontrol.unilist[index];
          return InkWell(
            onTap: () {
              Get.to(DetailUniView(SearchUni));
            },
            child: Container(
              height: Get.height * 0.3,
              width: Get.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: colorgrey),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: Get.height * 0.2,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(SearchUni.imgUni),
                              fit: BoxFit.cover)),
                    ),
                    UniText(
                      label: SearchUni.nameUni,
                      fontsize: 14,
                      fontweight: FontWeight.bold,
                    ),
                    Row(
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
                        SizedBox(width: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Colors.black,
                            ),
                            UniText(label: SearchUni.Price),
                          ],
                        ),
                        SizedBox(width: 5),
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
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
