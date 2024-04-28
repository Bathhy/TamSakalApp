import 'package:get/get.dart';
import 'package:practiceloginlayout/ViewScreen/detail_major.dart';
import 'package:practiceloginlayout/ViewScreen/profileUi/profile_ui.dart';
import 'package:practiceloginlayout/ViewScreen/splashscreen.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/login/loginpage.dart';

class RouteScreen {
  static String SplashscreenRoute = '/splash';
  static String BottomNaviRoute = '/bottom';
  static String ProfileRoute = '/Profilview';
  static String DetailMajorRoute = '/DetailMajor';
  static String LoginRoute = '/Login';
  static String DetailUniRoute = '/DetailUni';
  static List<GetPage> appPage = [
    GetPage(name: SplashscreenRoute, page: () => Splashscreen()),
    GetPage(name: BottomNaviRoute, page: () => BottomNaviView()),
    GetPage(name: ProfileRoute, page: () => ProfileView()),
    GetPage(name: DetailMajorRoute, page: () => DetailMajorView()),
    GetPage(name: LoginRoute, page: () => Loginpage()),
  ];
}
