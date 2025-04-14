class WishlistResponse {
  final String status;
  final String message;
  final WishlistData data;

  WishlistResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory WishlistResponse.fromJson(Map<String, dynamic> json) {
    return WishlistResponse(
      status: json['status'],
      message: json['message'],
      data: WishlistData.fromJson(json['data']),
    );
  }
}

class WishlistData {
  final List<dynamic> wishlist;

  WishlistData({required this.wishlist});

  factory WishlistData.fromJson(Map<String, dynamic> json) {
    return WishlistData(
      wishlist: json['wishlist'] ?? [],
    );
  }
}
