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
          SizedBox(
            height: 20,
          ),
          _searchInput()
        ],
      ),
    );
  }

  Widget _searchInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.grey),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Text(
              'Search',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            )
          ],
        ),
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
