import 'package:get/get.dart';
import 'package:practiceloginlayout/ViewScreen/home_screen.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
  void checkLoginStat() async {
    SharedPreferences prefc = await SharedPreferences.getInstance();
    bool? loginStatus = prefc.getBool(loginkey) ?? false;
    loginStatus == true
        ? Get.offAll(BottomNaviView())
        : Get.offAll(Loginpage());
  }
}
