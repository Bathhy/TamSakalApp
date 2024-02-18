import 'package:flutter/material.dart';
import 'package:practiceloginlayout/colo_const/color_const.dart';

class CompoProfilView extends StatelessWidget {
  CompoProfilView({
    super.key,
    required this.label,
    this.icon,
    this.iconcolor = myBlueColor,
    this.textcolor,
    this.iconbutton,
    this.iconbuttoncolor = myBlueColor,
    this.onpress,
  });
  final String label;
  final IconData? icon;
  final Color? iconcolor;
  final Color? textcolor;
  final IconData? iconbutton;
  final Color? iconbuttoncolor;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: iconcolor,
            ),
            Text(
              label,
              style: TextStyle(color: textcolor, fontSize: 15),
            )
          ],
        ),
        IconButton(
            onPressed: onpress,
            icon: Icon(
              iconbutton,
              color: iconbuttoncolor,
            ))
      ],
    );
  }
}
