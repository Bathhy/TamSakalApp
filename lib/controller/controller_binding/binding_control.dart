import 'package:get/get.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';

class UniBingding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}