
import 'package:get/get.dart';
import 'package:practiceloginlayout/controller/bottom_control.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/controller/page_control.dart';
import 'package:practiceloginlayout/controller/search_control.dart';

class UniBingding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => PageviewController());
    Get.put(BottomNaviController());
    // Get.put(favcontroller())
    Get.put(SearchingController());
  }
}
