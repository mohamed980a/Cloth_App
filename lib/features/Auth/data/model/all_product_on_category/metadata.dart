import 'package:equatable/equatable.dart';

class Metadata extends Equatable {
  final int? currentPage;
  final int? limit;
  final int? totalPages;
  final int? results;

  const Metadata({
    this.currentPage,
    this.limit,
    this.totalPages,
    this.results,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        currentPage: json['currentPage'] as int?,
        limit: json['limit'] as int?,
        totalPages: json['totalPages'] as int?,
        results: json['results'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'currentPage': currentPage,
        'limit': limit,
        'totalPages': totalPages,
        'results': results,
      };

  @override
  List<Object?> get props => [currentPage, limit, totalPages, results];
}
