import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class RepoUni {
  String imgUni = "";
  String nameUni = "";
  String price = "";

  RepoUni({
    required String imgUni,
    required String nameUni,
    required String price,
  }) {
    this.imgUni = imgUni;
    this.nameUni = nameUni;
    this.price = price;
  }

  static List<RepoUni> repouniver = [
    RepoUni(
        imgUni: imageRUPP,
        nameUni: "Royal University of Phnom Penh",
        price: "300 - 2500"),
    RepoUni(imgUni: imageMIT, nameUni: "MIT university", price: "1000 - 4000"),
    RepoUni(
        imgUni: imageCADT,
        nameUni: "Cambodia Academy Digital of Technology",
        price: "675 - 2500")
  ];
}
