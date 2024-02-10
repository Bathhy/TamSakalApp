import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class CateUni{
  String imgCateuni = "";
  String CateUniname = "";


CateUni({
    required this.imgCateuni,
    required this.CateUniname,
  }){
    this.imgCateuni = imgCateuni;
    this.CateUniname = CateUniname;
  }
  

  static List<CateUni>categoryuni = [
    CateUni(imgCateuni: imageCode, CateUniname: "Information Technology",),
    CateUni(imgCateuni: imageArch, CateUniname: "Architecture")
  ];
}