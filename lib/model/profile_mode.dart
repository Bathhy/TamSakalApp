class ProfileModel {
  String Name;
  String country;
  String Email;
  String city;
  // String Address;
  String Phonenumber;

  ProfileModel({
    required this.country,
    required this.Name,
    required this.Email,
    required this.city,
    // required this.Address,
    required this.Phonenumber,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        country: json["country"],
        Name: json["Name"],
        Email: json["Email"],
        city: json["city"],
        // Address: json["address"],
        Phonenumber: json["Phonenumber"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "Name": Name,
        "Email": Email,
        "city": city,
        // "address": Address,
        "Phonenumber": Phonenumber,
      };
}
