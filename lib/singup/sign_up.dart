import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/component_project/textformfield_compo.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';
import 'package:get/get.dart';

class Signupscreen extends StatefulWidget {
  Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: myBlueColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: UniText(label: "Back", color: Colors.white),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: ClipOval(
                child: Image.asset(
                  UPLogo,
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                        color: myBlueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  textformNoIcon(
                    controller: authController.RUsername,
                    label: "Name",
                  ),
                  const SizedBox(height: 16),
                  textformNoIcon(
                    controller: authController.Remail,
                    label: "Email",
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => Column(
                      children: [
                        textformNoIcon(
                          label: "Password",
                          obscureTextl: authController.passhidden.value,
                          icondata: authController.passhidden.value == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          colorIcon: Colors.grey,
                          onpress: () {
                            authController.hideSlogin();
                          },
                        ),
                        const SizedBox(height: 20),
                        textformNoIcon(
                          label: "Confirm Password",
                          obscureTextl: authController.cpasshidden.value,
                          icondata: authController.cpasshidden.value == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          colorIcon: Colors.grey,
                          onpress: () {
                            authController.hidecslogin();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        child: ElevatedButton(
                          onPressed: () {
                            authController.register(
                                authController.Remail.text,
                                authController.Rpassword.text,
                                authController.RcPassword.text,
                                authController.RUsername.text);
                            // authController.ClearRegister();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 15.0,
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 20,
                                color: myBlueColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "--Or Sign in with--",
                  style: TextStyle(color: myBlueColor, fontSize: 14),
                ),
              ],
            ),
            _signin_with(),
          ],
        ),
      ),
    );
  }

  Container _signin_with() {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10.0,
            ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                imagegoogle,
                height: 30,
                width: 30,
              ),
            ),
            label: const Text(
              "",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10.0,
            ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                imageTwitter,
                height: 30,
                width: 30,
              ),
            ),
            label: const Text(
              "",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10.0,
            ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                imageIG,
                height: 30,
                width: 30,
              ),
            ),
            label: const Text(
              "",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
    );
  }
}
