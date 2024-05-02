// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';
import 'package:practiceloginlayout/component_project/Text_compo.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.label,
    this.onTab,
  });
  String? label;
  final VoidCallback? onTab;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      child: UniText(
        label: "$label",
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50),
        backgroundColor: myBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
