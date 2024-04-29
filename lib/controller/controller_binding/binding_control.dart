import 'package:get/get.dart';
import 'package:practiceloginlayout/controller/bottom_control.dart';
import 'package:practiceloginlayout/controller/page_control.dart';
import 'package:practiceloginlayout/controller/search_control.dart';
import 'package:practiceloginlayout/controller/splash_control.dart';

class UniBingding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageviewController());
    Get.put(BottomNaviController());
    Get.put(SplashscreenController());
    Get.put(SearchingController());
  }
}
