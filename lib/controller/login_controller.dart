import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/model/model_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var passhidden = true.obs;
  var isLoggedIn = false.obs;
  var cpasshidden = true.obs;
  var lpasshidden = true.obs;
  Rx<User> user = User(email: "", password: "").obs;
  final Remail = TextEditingController(text: "messi@gmail.com");
  final Rpassword = TextEditingController(text: "idk");
  final RcPassword = TextEditingController(text: "idk");
  final Lemail = TextEditingController(text: "messi@gmail.com");
  final Lpassword = TextEditingController(text: "idk");
  final TextEditingController passwordController = TextEditingController();
  void register(String email, String passsword, String conpassword) async {
    if (Remail.text.isEmpty ||
        Rpassword.text.isEmpty ||
        RcPassword.text.isEmpty) {
      Get.snackbar(
        "Error Signup",
        "Try again",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: Duration(seconds: 1),
      );
    } else {
      user.value = User(email: email, password: passsword);
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString('email', email);
      pref.setString('password', passsword);
      Get.snackbar(
        "Registered",
        "SignUp Success",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: Duration(seconds: 1),
      );
    }
    ;
  }

  void login(String email, String passsword) async {
    if (Lemail.text.isEmpty || Lpassword.text.isEmpty) {
      Get.snackbar("Error Login", "No account");
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final storeemail = prefs.getString('email');
      final storepassword = prefs.getString('password');
      if (email == storeemail || passsword == storepassword) {
        Get.offAll(() => BottomNaviView());
        prefs.setBool('islogin', true);
        isLoggedIn.value = true;
      } else {
        Get.snackbar("Not found", "Couldn't find account",
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
            colorText: Colors.white);
      }
    }
    ;
  }

  void ClearRegister() {
    Remail.clear();
    Rpassword.clear();
    RcPassword.clear();
  }

  void clearlogin() {
    Lemail.clear();
    Lpassword.clear();
  }

  Future<bool> isLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isLogin') ?? false;
  }

  void hideLogin() {
    lpasshidden.value = !lpasshidden.value;
  }

  void hideSlogin() {
    passhidden.value = !passhidden.value;
  }

  void hidecslogin() {
    cpasshidden.value = !cpasshidden.value;
  }
}
