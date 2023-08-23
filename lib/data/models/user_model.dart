class UserModel {
  String? userId;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? birthDate;
  String? city;
  String? sexe;
  bool? isClient;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.birthDate,
    required this.city,
    required this.sexe,
    required this.isClient,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json["_id"];
    name = json["name"];
    email = json["email"];
    password = json["password"];
    phone = json["phone"];
    birthDate = json["birthDate"];
    city = json["city"];
    sexe = json["sexe"];
    isClient = json["isClient"];
  }
}
