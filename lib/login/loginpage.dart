import 'package:flutter/material.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: ClipOval(
              child: Image.asset(
                Image_GS,
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
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 15.0,
                        ),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20, color: Colors.white),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "--Or Sign in with--",
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add your social login buttons or icons here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
