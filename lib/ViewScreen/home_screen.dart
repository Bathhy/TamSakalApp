import 'package:flutter/material.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black)),
                labelText: 'Search',
                suffixIcon: Icon(Icons.search)),
          )
        ],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: myBlueColor,
      title: const Text(
        "University Pedia",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person_pin,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
