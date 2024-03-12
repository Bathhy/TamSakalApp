// import 'package:flutter/foundation.dart';
import 'package:practiceloginlayout/splashscreen/declareimage.dart';

class RepoUni {
  String imgUni = "";
  String nameUni = "";
  String CateImage = "";
  String UniCateImg = "";
  String Overview = "";
  String Price = "";
  List<String> unifac = [];
  List<String> unidepart = [];

  RepoUni({
    required String imgUni,
    required String nameUni,
    required String UniCateImg,
    required String CateImage,
    required String Overview,
    required String Price,
    List<String>? unifac,
    // List<String>? unidepart,
  }) {
    this.imgUni = imgUni;
    this.nameUni = nameUni;
    this.CateImage = CateImage;
    this.UniCateImg = UniCateImg;
    this.Overview = Overview;
    this.unifac = unifac ?? [];
    this.Price = Price;
    // this.unidepart = unidepart ?? [];
  }

  Map<String, dynamic> toMap() {
    return {
      'img': this.imgUni,
      'name': this.nameUni,
      'Categoryimg': this.CateImage,
      'overview': this.Overview,
      'Unicate': this.UniCateImg,
      'price': this.Price,
      'unifaculty': this.unifac,
    };
  }

  factory RepoUni.fromJson(Map<String, dynamic> json) {
    return RepoUni(
      imgUni: json['img'] ?? "",
      nameUni: json['name'] ?? "",
      UniCateImg: json['Categoryimg'] ?? "",
      CateImage: json['Unicate'] ?? "",
      Overview: json['overview'] ?? "",
      Price: json['price'] ?? "",
      unifac: List<String>.from(
        json['unifaculty'] ?? [],
      ),
    );
  }

  static List<RepoUni> repouniver = [
    RepoUni(
      imgUni: imageRUPP,
      nameUni: "Royal University of Phnom Penh",
      CateImage: imageCode,
      UniCateImg: imageRUPP,
      Overview:
          "The Royal University of Phnom Penh (RUPP) has evolved significantly since its founding in 1960. Recent progress in various areas positions RUPP to drive Cambodia's socio-economic development through education, research, and community service. The Strategic Plan 2019-2023 outlines RUPP's vision to align with national goals and become a regional hub for intellectual and cultural development.",
      Price: " 500\$ - 2500\$",
      unifac: [
        "Faculty of science ",
        'Faculty of Engineering',
        "Faculty of Social Sciences and Humanities",
        'Faculty of Education',
        "Faculty of Development Studies ",
        'Institute of Foreign Languages',
        'Institute for International Studies and Public Policy'
      ],
    ),
    RepoUni(
        imgUni: imageITC,
        nameUni: "Institute of Technology of Cambodia",
        CateImage: imageCode,
        UniCateImg: imageITC,
        Overview:
            "The Institute of Technology of Cambodia, known for short as Sala Techno, is a higher education institution in Phnom Penh, Cambodia that trains students in science, technology and engineering. ",
        Price: "200\$-9500\$ ",
        unifac: [
          "Faculty of Applied Science",
          'Faculty of Civil Engineering,',
          "Faculty of Chemical and Food Engineering,",
          'Faculty of Electrical Engineering',
          "Faculty of Geo-resources and Geotechnical Engineering ",
          'Faculty of Hydrology and Water Resources Engineering',
        ]),
    RepoUni(
        imgUni: imageUHS,
        nameUni: "University of Health Sciences",
        CateImage: imageArch,
        UniCateImg: imageUHS,
        Overview:
            "Originally established 1946, it was known as the School for Medical Officers. After a total abandonment during the Khmer Rouge regime, it resumed its ongoing medical training in 1980, and combined three sections in a single faculty (Medicine, Pharmacy, and Dentistry). After having its name changed multiple times during throughout the years, it settled on the University of Health Sciences in 1997. It is famously known as Sala Krahom, which translates literally as Red School.",
        Price: "750\$-2,300\$",
        unifac: [
          "Faculty of Medicine",
          'Faculty of Pharmacy',
          "Faculty Public Health",
          'Faculty of Dentistry',
          "Technical School of Medical Care",
        ])
  ];
}
