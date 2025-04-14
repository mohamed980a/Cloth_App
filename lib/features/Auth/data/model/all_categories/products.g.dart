// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewProduct _$NewProductFromJson(Map<String, dynamic> json) => NewProduct(
      status: json['status'] as String?,
      results: (json['results'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewProductToJson(NewProduct instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'products': instance.products,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      sold: (json['sold'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      productDiscount: (json['productDiscount'] as num?)?.toDouble(),
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imgCover: json['imgCover'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ratingsAverage: (json['ratingsAverage'] as num?)?.toInt(),
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'summary': instance.summary,
      'description': instance.description,
      'quantity': instance.quantity,
      'sold': instance.sold,
      'price': instance.price,
      'productDiscount': instance.productDiscount,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'imgCover': instance.imgCover,
      'images': instance.images,
      'category': instance.category,
      'subcategories': instance.subcategories,
      'ratingsAverage': instance.ratingsAverage,
      'ratingsQuantity': instance.ratingsQuantity,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'id': instance.id,
    };
