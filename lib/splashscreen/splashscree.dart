// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:practiceloginlayout/login/loginpage.dart';
// import 'package:practiceloginlayout/splashscreen/declareimage.dart';

// class Splashscreen extends StatefulWidget {
//   Splashscreen({super.key});

//   @override
//   State<Splashscreen> createState() => _SplashscreenState();
// }

// class _SplashscreenState extends State<Splashscreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 2),
//         () => Get.to(Loginpage()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromARGB(255, 48, 16, 92),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               imageGS,
//               width: 200,
//             ),
//             const SizedBox(height: 20),
//             const CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.brown),
//               strokeWidth: 5.5,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
