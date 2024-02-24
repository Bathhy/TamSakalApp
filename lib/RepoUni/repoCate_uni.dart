import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class CateUni {
  String imgCateuni = "";
  String CateUniname = "";
  String? category;
  List<String> imagecate = [];

  CateUni({
    required this.imgCateuni,
    required this.CateUniname,
    String? category,
    List<String>? imagecate,
  }) {
    this.imgCateuni = imgCateuni;
    this.CateUniname = CateUniname;
    this.category = category;
    this.imagecate = imagecate ?? [];
  }

  static List<CateUni> categoryuni = [
    CateUni(
      imgCateuni: imageCode,
      CateUniname: "Information Technology",
      category: "IT",
      imagecate: [imageCADT, imageRUPP],
    ),
    CateUni(imgCateuni: imageArch, CateUniname: "Architecture",category: "Architect"),
  ];
}
