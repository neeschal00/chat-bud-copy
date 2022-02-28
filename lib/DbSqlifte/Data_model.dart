class DataModel {
  int? id;
  String? sid;
  String? sender;
  String? content;
  String? chat;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? iV;
  DataModel(
      {this.id,
      this.sid,
      this.sender,
      this.content,
      this.chat,
      this.createdAt,
      this.updatedAt,
      this.iV});

  factory DataModel.fromMap(Map<String, dynamic> json) => new DataModel(
        id: json["id"],
        sid: json["sid"],
        sender: json["sender"],
        content: json["content"],
        chat: json["chat"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        iV: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "sid": sid,
        "sender": sender,
        "content": content,
        "chat": chat,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": iV,
      };
}
