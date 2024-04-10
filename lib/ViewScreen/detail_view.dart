import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';
import 'package:practiceloginlayout/controller/fav_uni_control.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';
import 'package:practiceloginlayout/login/loginpage.dart';

class DetailUniView extends StatefulWidget {
  final RepoUni repo;
  const DetailUniView(this.repo);

  @override
  State<DetailUniView> createState() => _DetailUniViewState();
}

class _DetailUniViewState extends State<DetailUniView> {
  final favcontroller _favcontrol = Get.put(favcontroller());
  final AuthController _authcontrol = Get.put(AuthController());

  @override
  void initState() {
    _favcontrol.initIcons(widget.repo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myBlueColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: [
          Obx(() => _authcontrol.isLoggedIn.isFalse
              ? IconButton(
                  onPressed: () {
                    _favcontrol.saveFavdb(widget.repo);
                  },
                  icon: GetBuilder<favcontroller>(
                    builder: (_) {
                      return Icon(
                        _favcontrol.favstat
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: Colors.white,
                      );
                    },
                  ),
                )
              : IconButton(
                  onPressed: () {
                    Get.snackbar(
                      'Please Login',
                      'You need to Login to add to favourite',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: myBlueColor,
                      colorText: Colors.white,
                      mainButton: TextButton(
                        onPressed: () {
                          Get.offAll(Loginpage());
                        },
                        child: UniText(
                          label: "Login",
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.white,
                  ),
                ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Container(
            height: Get.height * 0.3,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(widget.repo.UniCateImg),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          UniText(
            label: widget.repo.nameUni,
            fontsize: 20,
            fontweight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.domain,
                    color: Colors.black,
                  ),
                  UniText(label: "University"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  UniText(label: widget.repo.Price),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Colors.black,
                  ),
                  UniText(label: "Phnom Penh"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UniText(
                label: "Overview:",
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
              UniText(
                label: widget.repo.Overview,
                fontsize: 15,
              ),
            ],
          ),
          SizedBox(height: 10),
          UniText(
              label: "Programs:", fontweight: FontWeight.bold, fontsize: 20),
          ListView.builder(
              shrinkWrap: true,
              itemCount: widget.repo.unifac.length,
              itemBuilder: (context, index) {
                final unidet = widget.repo.unifac[index];
                return Card(
                  child: ExpansionTile(
                    shape: Border.all(color: Colors.transparent),
                    title: UniText(
                      label: unidet,
                    ),
                    children: [
                      UniText(
                        label: "Department of Broken heart",
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
