import 'package:json_annotation/json_annotation.dart';
part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  String? bookId;
  String? position;
  String? name;
  String? cover;
  dynamic rating;
  String? url;

  BookModel({this.bookId, this.position, this.name, this.cover, this.rating, this.url});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return _$BookModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BookModelToJson(this);
  }
}
