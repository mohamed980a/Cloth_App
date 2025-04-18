class Subcatproduct {
  final String status;
  final Metadata metadata;
  final int results;
  final List<Product> data;

  Subcatproduct(
      {required this.status,
      required this.metadata,
      required this.results,
      required this.data});

  factory Subcatproduct.fromJson(Map<String, dynamic> json) {
    return Subcatproduct(
      status: json['status'],
      metadata: Metadata.fromJson(json['metadata']),
      results: json['results'],
      data: List<Product>.from(json['data'].map((x) => Product.fromJson(x))),
    );
  }
}

class Metadata {
  final int currentPage;
  final int limit;
  final int totalPages;

  Metadata(
      {required this.currentPage,
      required this.limit,
      required this.totalPages});

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      currentPage: json['currentPage'],
      limit: json['limit'],
      totalPages: json['totalPages'],
    );
  }
}

class Product {
  final String id;
  final String name;
  // Add more fields as needed

  Product({required this.id, required this.name});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'],
      name: json['name'],
    );
  }
}
