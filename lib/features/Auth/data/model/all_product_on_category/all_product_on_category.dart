import 'package:equatable/equatable.dart';

import 'metadata.dart';

class AllProductOnCategory extends Equatable {
  final String? status;
  final Metadata? metadata;
  final List<dynamic>? data;

  const AllProductOnCategory({this.status, this.metadata, this.data});

  factory AllProductOnCategory.fromJson(Map<String, dynamic> json) {
    return AllProductOnCategory(
      status: json['status'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      data: json['data'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'metadata': metadata?.toJson(),
        'data': data,
      };

  @override
  List<Object?> get props => [status, metadata, data];
}
