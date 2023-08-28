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
    this.userId,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.birthDate,
    this.city,
    this.sexe,
    this.isClient,
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
