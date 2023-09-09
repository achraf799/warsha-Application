class MessageModel {
  String? senderId;
  String? convId;
  String? message;
  String? sentAt;

  MessageModel({
    this.senderId,
    this.convId,
    this.message,
    this.sentAt,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    senderId = json["senderId"];
    convId = json["convId"];
    message = json["message"];
    sentAt = json["created_at"];
  }
}
