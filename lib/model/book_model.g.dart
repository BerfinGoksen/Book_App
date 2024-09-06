// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      bookId: json['bookId'] as String?,
      position: json['position'] as String?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'bookId': instance.bookId,
      'position': instance.position,
      'name': instance.name,
      'cover': instance.cover,
      'rating': instance.rating,
      'url': instance.url,
    };
