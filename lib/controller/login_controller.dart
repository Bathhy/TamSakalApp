import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/bottom_navi_view/bottom_navi_viewscreen.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/model/model_user.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var passhidden = true.obs;
  var cpasshidden = true.obs;
  var lpasshidden = true.obs;
  RxBool isLoggedIn = false.obs;
  RxString emailuser = ''.obs;
  RxString Nameuser = ''.obs;
  Rx<User> user = User(email: "", password: "", userName: "").obs;
  final Remail = TextEditingController(text: "messi@gmail.com");
  final Rpassword = TextEditingController(text: "idk");
  final RcPassword = TextEditingController(text: "idk");
  final RUsername = TextEditingController();
  final LUsername = TextEditingController();
  final Lemail = TextEditingController(text: "messi@gmail.com");
  final Lpassword = TextEditingController(text: "idk");
  final TextEditingController passwordController = TextEditingController();

  void register(String email, String passsword, String conpassword,
      String userName) async {
    if (email == "" || passsword == "" || conpassword == "" || userName == "") {
      Get.snackbar(
        "Error Signup",
        "Try again",
        icon: Icon(
          Icons.error_outline,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 1),
      );
    } else {
      user.value = User(email: email, password: passsword, userName: userName);
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString('email', email);
      pref.setString('password', passsword);
      pref.setString('userName', userName);
      isLoggedIn.value = true;

      print('After login: isLoggedIn = ${isLoggedIn.value}');
      Get.snackbar(
        icon: Icon(
          Icons.check,
          color: Colors.white,
        ),
        "Registered",
        "SignUp Success",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 1),
      );
    }
  }

  void getUserInfo() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? storeemail = pref.getString('email');
      String? storeUsername = pref.getString('userName');
      emailuser.value = storeemail ?? '';
      Nameuser.value = storeUsername ?? '';

      print("Email: $storeemail");
      print("Email: $storeUsername");
    } catch (e) {
      print(e);
    }
  }

  void login(String email, String passsword, String userName) async {
    if (email == "" || passsword == "" || userName == "") {
      Get.snackbar("Error Login", "No account",
          icon: Icon(
            Icons.error_outline,
            color: Colors.white,
          ),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1));
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final storeemail = prefs.getString('email');
      final storepassword = prefs.getString('password');
      final storeuserName = prefs.getString('userName');
      if (email == storeemail ||
          passsword == storepassword ||
          userName == storeuserName) {
        isLoggedIn.value = true;
        print('After login: isLoggedIn = ${isLoggedIn.value}');
        Get.offAll(() => BottomNaviView());
        prefs.setBool(loginkey, true);
        getUserInfo();
      } else {
        Get.snackbar("Not found", "Couldn't find account",
            icon: Icon(
              Icons.dangerous,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 1),
            colorText: Colors.white);
      }
    }
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

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(loginkey);
    Get.offAll(Loginpage());
  }
}
