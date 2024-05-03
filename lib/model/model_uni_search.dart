class SearchUniNameModel {
  final String NameUni;

  SearchUniNameModel({required this.NameUni});

  Map<String, dynamic> toJson() {
    return {
      'nameUni': NameUni,
    };
  }

  factory SearchUniNameModel.fromJson(Map<String, dynamic> json) {
    return SearchUniNameModel(
      NameUni: json['nameUni'],
    );
  }
}
