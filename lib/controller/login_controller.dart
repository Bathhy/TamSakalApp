import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/model/model_user.dart';

class AuthController extends GetxController {
  var passhidden = true.obs;
  var cpasshidden = true.obs;
  var lpasshidden = true.obs;
  Rx<User> user = User(email: "", password: "").obs;
  final Remail = TextEditingController(text: "messi@gmail.com");
  final Rpassword = TextEditingController(text: "idk");
  final RcPassword = TextEditingController(text: "idk");
  final Lemail = TextEditingController(text: "messi@gmail.com");
  final Lpassword = TextEditingController(text: "idk");
  final TextEditingController passwordController = TextEditingController();
  void register() {}
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
