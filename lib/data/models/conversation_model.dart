import 'package:warsha/data/models/user_model.dart';

class ConversationModel {
  String? id;
  String? creatorId;
  String? secondUsrId;
  String? createdAt;
  String? updatedAt;
  UserModel? otherUsr;

  ConversationModel(
      {this.id,
      this.creatorId,
      this.secondUsrId,
      this.createdAt,
      this.updatedAt,
      this.otherUsr});

  ConversationModel.fromJson(Map<String, dynamic> json) {
    id = json["convInfo"]["_id"];
    creatorId = json["convInfo"]["creatorId"];
    secondUsrId = json["convInfo"]["secondUsrId"];
    createdAt = json["convInfo"]["createdAt"];
    updatedAt = json["convInfo"]["updatedAt"];
    otherUsr = UserModel.fromJson(json['otherUsr']);
  }
}
