import 'package:flutter/material.dart';
import 'package:practiceloginlayout/login/loginpage.dart';
import 'package:practiceloginlayout/splashscreen/splashscree.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splashscreen(),
        '/login': (context) => const Loginpage(),
      },
      // home: const Loginpage(),
    );
  }
}
