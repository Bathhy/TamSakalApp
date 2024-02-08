import 'package:flutter/material.dart';

class UniText extends StatelessWidget {
  UniText({
    super.key,
    required this.label,
    this.color = Colors.black,
    this.fontweight,
    this.fontsize,
  });
  String label;
  Color color;
  FontWeight? fontweight;
  double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style:
          TextStyle(color: color, fontWeight: fontweight, fontSize: fontsize),
    );
  }
}
