import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/controller/login_controller.dart';

class textformNoIcon extends StatelessWidget {
  textformNoIcon({
    super.key,
    this.label,
  });
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: myBlueColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: label,
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class textformfieldWithIcon extends StatelessWidget {
   textformfieldWithIcon({
    super.key,
    required AuthController authController, this.label,
  }) : _authController = authController;

  final AuthController _authController;
final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: myBlueColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Obx(
        () => TextFormField(
          obscureText: _authController.lpasshidden.value,
          decoration: InputDecoration(
            hintText: label,
            suffixIcon: InkWell(
              child: Icon(
                _authController.lpasshidden.value
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.grey,
              ),
              onTap: () {
                _authController.hideLogin();
              },
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: 15, horizontal: 20),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}