import 'package:json_annotation/json_annotation.dart';
part 'populer_book_model.g.dart';

@JsonSerializable()
class PopulerBook {
  String? bookId;
  String? position;
  String? name;
  String? cover;
  dynamic rating;
  String? url;

  PopulerBook({this.bookId, this.position, this.name, this.cover, this.rating, this.url});

  factory PopulerBook.fromJson(Map<String, dynamic> json) {
    return _$PopulerBookFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PopulerBookToJson(this);
  }
}
