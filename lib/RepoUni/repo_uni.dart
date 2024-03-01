import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class RepoUni {
  String imgUni = "";
  String nameUni = "";
  String CateImage = "";
  String UniCateImg = "";
  String Overview = "";
  String Price = "";

  RepoUni({
    required String imgUni,
    required String nameUni,
    required String UniCateImg,
    required String CateImage,
    required String Overview,
    required String Price,
  }) {
    this.imgUni = imgUni;
    this.nameUni = nameUni;
    this.CateImage = CateImage;
    this.UniCateImg = UniCateImg;
    this.Overview = Overview;
    this.Price = Price;
  }

  static List<RepoUni> repouniver = [
    RepoUni(
        imgUni: imageRUPP,
        nameUni: "Royal University of Phnom Penh",
        CateImage: imageCode,
        UniCateImg: imageRUPP,
        Overview:
            "The Royal University of Phnom Penh (RUPP) has evolved significantly since its founding in 1960. Recent progress in various areas positions RUPP to drive Cambodia's socio-economic development through education, research, and community service. The Strategic Plan 2019-2023 outlines RUPP's vision to align with national goals and become a regional hub for intellectual and cultural development.",
        Price: " 500\$ - 2500\$"),
    RepoUni(
      imgUni: imageMIT,
      nameUni: "MIT University",
      CateImage: imageCode,
      UniCateImg: imageMIT,
      Overview:
          "MIT, in Cambridge, USA, is a top-tier institution for science and technology education. Founded in 1861, it emphasizes innovation and hands-on learning. MIT's research spans AI to renewable energy, fostering creativity and entrepreneurship.",
      Price: "54000\$+ ",
    ),
    RepoUni(
      imgUni: imageCADT,
      nameUni: "Cambodia Academy Digital of Technology",
      CateImage: imageArch,
      UniCateImg: imageCADT,
      Overview:
          "CADT aims to be a national flagship research and education institution for Digital Technology and Innovation, nurturing digital talent and innovators to drive Cambodia toward a digital society.",
      Price: "2500\$+ ",
    )
  ];
}
