// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_for_you_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookForYou _$BookForYouFromJson(Map<String, dynamic> json) => BookForYou(
      bookId: json['bookId'] as String?,
      position: json['position'] as String?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      rating: json['rating'],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$BookForYouToJson(BookForYou instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'position': instance.position,
      'name': instance.name,
      'cover': instance.cover,
      'rating': instance.rating,
      'url': instance.url,
    };
