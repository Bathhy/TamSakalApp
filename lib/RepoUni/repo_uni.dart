import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class RepoUni {
  String imgUni = "";
  String nameUni = "";
  String price = "";
  String CateImage = "";

  RepoUni({
    required String imgUni,
    required String nameUni,
    required String price,
    required String CateImage,
  }) {
    this.imgUni = imgUni;
    this.nameUni = nameUni;
    this.price = price;
    this.CateImage = CateImage;
  }

  static List<RepoUni> repouniver = [
    RepoUni(
      imgUni: imageRUPP,
      nameUni: "Royal University of Phnom Penh",
      price: "300 - 2500",
      CateImage: imageCode,
    ),
    RepoUni(
        imgUni: imageMIT,
        nameUni: "MIT university",
        price: "1000 - 4000",
        CateImage: imageCode),
    RepoUni(
        imgUni: imageCADT,
        nameUni: "Cambodia Academy Digital of Technology",
        price: "675 - 2500",
        CateImage: imageArch)
  ];
}
