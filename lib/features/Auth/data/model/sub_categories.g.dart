// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoryResponse _$SubCategoryResponseFromJson(Map<String, dynamic> json) =>
    SubCategoryResponse(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoryResponseToJson(
        SubCategoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      json['imageUrl'] as String?,
      id: json['_id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'imageUrl': instance.imageUrl,
    };
