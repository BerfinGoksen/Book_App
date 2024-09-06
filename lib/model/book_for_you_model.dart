import 'package:json_annotation/json_annotation.dart';
part 'book_for_you_model.g.dart';

@JsonSerializable()
class BookForYou {
  String? bookId;
  String? position;
  String? name;
  String? cover;
  dynamic rating;
  String? url;

  BookForYou({this.bookId, this.position, this.name, this.cover, this.rating, this.url});
//factory yeni bir nesne oluşturmak zorunda değildir var olan bir nesneyi de döndürebilir yeni bir nesne de oluşturabilir
  factory BookForYou.fromJson(Map<String, dynamic> json) {
    return _$BookForYouFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BookForYouToJson(this);
  }
}
