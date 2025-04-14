// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'products.g.dart';
//
// @JsonSerializable()
// class Products {
//   String? status;
//   Metadata? metadata;
//   int? results;
//   Data? data;
//
//   Products({this.status, this.metadata, this.results, this.data});
//
//   factory Products.fromJson(Map<String, dynamic> json) =>
//       _$ProductsFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ProductsToJson(this);
// }
// @JsonSerializable()
// class Metadata {
//   int? currentPage;
//   int? limit;
//   int? totalPages;
//
//   Metadata({this.currentPage, this.limit, this.totalPages});
//
//   factory Metadata.fromJson(Map<String, dynamic> json) =>
//       _$MetadataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$MetadataToJson(this);
// }
// @JsonSerializable()
// class Data {
//   String? sId;
//   String? name;
//   String? summary;
//   String? description;
//   int? quantity;
//   int? sold;
//   double? price;
//   double? productDiscount;
//   List<String>? colors;
//   List<String>? sizes;
//   String? imgCover;
//   List<String>? images;
//   String? category;
//   List<String>? subcategories;
//   double? ratingsAverage;
//   int? ratingsQuantity;
//   String? status;
//   String? createdAt;
//   String? updatedAt;
//   String? slug;
//   String? id;
//
//   Data(
//       {this.sId,
//         this.name,
//         this.summary,
//         this.description,
//         this.quantity,
//         this.sold,
//         this.price,
//         this.productDiscount,
//         this.colors,
//         this.sizes,
//         this.imgCover,
//         this.images,
//         this.category,
//         this.subcategories,
//         this.ratingsAverage,
//         this.ratingsQuantity,
//         this.status,
//         this.createdAt,
//         this.updatedAt,
//         this.slug,
//         this.id});
//   factory Data.fromJson(Map<String, dynamic> json) =>
//       _$DataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$DataToJson(this);
//
// }

import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';
@JsonSerializable()
class NewProduct {
  String? status;
  int? results;
  Data? data;

  NewProduct({this.status, this.results, this.data});

  factory NewProduct.fromJson(Map<String, dynamic> json) =>
      _$NewProductFromJson(json);

  Map<String, dynamic> toJson() => _$NewProductToJson(this);

}
@JsonSerializable()
class Data {
  List<Products>? products;

  Data({this.products});
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);


}
@JsonSerializable()
class Products {
  String? sId;
  String? name;
  String? summary;
  String? description;
  int? quantity;
  int? sold;
  double? price;
  double? productDiscount;
  List<String>? colors;
  List<String>? sizes;
  String? imgCover;
  List<String>? images;
  String? category;
  List<String>? subcategories;
  int? ratingsAverage;
  int? ratingsQuantity;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? id;

  Products(
      {this.sId,
        this.name,
        this.summary,
        this.description,
        this.quantity,
        this.sold,
        this.price,
        this.productDiscount,
        this.colors,
        this.sizes,
        this.imgCover,
        this.images,
        this.category,
        this.subcategories,
        this.ratingsAverage,
        this.ratingsQuantity,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.slug,
        this.id});
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);


}