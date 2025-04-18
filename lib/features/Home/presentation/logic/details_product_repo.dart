import 'package:cloyhapp/core/Network/api_service.dart';

import '../../../Catalog/logic/subcatproduct.dart';

class ProductDetailsRepository {
  final LoginApi api;

  ProductDetailsRepository(this.api);

  Future<Product> getProductDetails(int id) => api.getProductDetails(id);
}
