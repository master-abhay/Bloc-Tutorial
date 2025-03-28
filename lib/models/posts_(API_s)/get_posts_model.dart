
class GetPostsModel {
  GetPostsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  GetPostsModel.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  int? userId;
  int? id;
  String? title;
  String? body;

  GetPostsModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      GetPostsModel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }
}
