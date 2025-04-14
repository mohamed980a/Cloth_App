import 'package:json_annotation/json_annotation.dart';


part 'all_categories.g.dart';

@JsonSerializable()// class AllCategories extends Equatable {
//   final String? status;
//   final Metadata? metadata;
//   final List<Datum>? data;
//
//   const AllCategories({this.status, this.metadata, this.data});
//
//   factory AllCategories.fromJson(Map<String, dynamic> json) =>
//       _$AllCategoriesFromJson(json);
//
//   Map<String, dynamic> toJson() => _$AllCategoriesToJson(this);
//
//   @override
//   List<Object?> get props => [status, metadata, data];
// }
class AllCategories {
  String? status;
  Metadata? metadata;
  int? results;
  List<Data>? data;

  AllCategories({this.status, this.metadata, this.results, this.data});

  factory AllCategories.fromJson(Map<String, dynamic> json) =>
      _$AllCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$AllCategoriesToJson(this);

}
@JsonSerializable()
class Metadata {
  int? currentPage;
  int? limit;
  int? totalPages;

  Metadata({this.currentPage, this.limit, this.totalPages});
  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);

}
@JsonSerializable()
class Data {
  String? sId;
  String? name;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? id;

  Data(
      {this.sId,
        this.name,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.slug,
        this.id});
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}