import 'package:get/get.dart';
class AuthController extends GetxController{
  var passhidden = true.obs;
  var cpasshidden = true.obs;
  var lpasshidden = true.obs;

  void hideLogin(){
    lpasshidden.value = !lpasshidden.value;
  }
void hideSlogin(){
  passhidden.value = !passhidden.value;
}
void hidecslogin(){
  cpasshidden.value = !cpasshidden.value;
}

}