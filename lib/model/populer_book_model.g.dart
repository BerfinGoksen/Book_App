// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'populer_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopulerBook _$PopulerBookFromJson(Map<String, dynamic> json) => PopulerBook(
      bookId: json['bookId'] as String?,
      position: json['position'] as String?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PopulerBookToJson(PopulerBook instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'position': instance.position,
      'name': instance.name,
      'cover': instance.cover,
      'rating': instance.rating,
      'url': instance.url,
    };
