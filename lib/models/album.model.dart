import 'dart:convert';

List<AlbumModel> albumFromJson(String str) =>
    List<AlbumModel>.from(json.decode(str).map((x) => AlbumModel.fromJson(x)));

String albumToJson(List<AlbumModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AlbumModel {
  int albumId;
  int id;
  String title;
  late String url;
  String thumbnailUrl;

  AlbumModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.thumbnailUrl
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) => AlbumModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "thumbnailUrl": thumbnailUrl
      };

  static fromMap(ex) {}
}