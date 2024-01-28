import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/ViewScreen/home_screen.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/singup/sign_up.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlueColor,
      appBar: AppBar(
        backgroundColor: myBlueColor,
        title: const Text(""),
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
                  imageGS,
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login to your Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.off(() => Homescreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            elevation: 15.0,
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 20,
                              color: myBlueColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "--Or Sign in with--",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            _signin_diffmethod(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                TextButton(
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Get.to(Signupscreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _signin_diffmethod() {
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
                borderRadius: BorderRadius.circular(9),
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
                borderRadius: BorderRadius.circular(9),
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
                borderRadius: BorderRadius.circular(9),
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
