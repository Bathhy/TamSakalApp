import 'package:get/get.dart';
import 'package:practiceloginlayout/ViewScreen/home_screen.dart';
import 'package:practiceloginlayout/ViewScreen/profile_ui.dart';
import 'package:practiceloginlayout/bottom_navi_view/account_view/personal_prof_view.dart';
import 'package:practiceloginlayout/bottom_navi_view/fav_view/fav_school_view.dart';
import 'package:practiceloginlayout/bottom_navi_view/search_view/search_page_view.dart';

class BottomNaviController extends GetxController {
  var currentInd = 0.obs;
  final Screen = [Homescreen(), FavSchool(), SearchPage(), ProfileView()];

  void pageclick(int index) {
    currentInd.value = index;
  }
}
