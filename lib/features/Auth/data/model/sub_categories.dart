import 'package:json_annotation/json_annotation.dart';

part 'sub_categories.g.dart';

@JsonSerializable()
class SubCategoryResponse {
  final String status;
  final List<SubCategory> data;

  SubCategoryResponse({required this.status, required this.data});

  factory SubCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryResponseToJson(this);
}

@JsonSerializable()
class SubCategory {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final String category;
  final String? imageUrl;

  SubCategory(this.imageUrl,
      {required this.id, required this.name, required this.category});

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
