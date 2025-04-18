class ProductModel {
  final String id;
  final String name;
  final String summary;
  final double price;
  final double productDiscount;
  final String imgCover;
  final List<String> images;
  final String subCategory;
  final String brand;

  ProductModel({
    required this.id,
    required this.name,
    required this.summary,
    required this.price,
    required this.productDiscount,
    required this.imgCover,
    required this.images,
    required this.subCategory,
    required this.brand,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      summary: json['summary'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      productDiscount: (json['productDiscount'] ?? 0).toDouble(),
      imgCover: json['imgCover'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      subCategory: json['subCategory'] ?? '',
      brand: json['brand'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'summary': summary,
      'price': price,
      'productDiscount': productDiscount,
      'imgCover': imgCover,
      'images': images,
      'subCategory': subCategory,
      'brand': brand,
    };
  }
}
