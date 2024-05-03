import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/search_control.dart';

class SearchHistoryView extends StatelessWidget {
  SearchHistoryView({super.key});
  final SearchingController _searchcontrol = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: _searchcontrol.searchhistorylist.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Icon(
                Icons.history,
                color: myBlueColor,
              ),
              SizedBox(
                width: 10,
                height: 30,
              ),
              Obx(
                () => UniText(
                  label: _searchcontrol.searchhistorylist[index].nameUni,
                  color: Colors.black,
                  fontsize: 18,
                ),
              ),
            ],
          );
        });
  }
}
