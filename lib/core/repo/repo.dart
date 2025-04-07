import 'package:cloyhapp/core/Network/api_service.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';

import '../../features/Auth/data/model/signup.dart';
import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';

class MyRepo {
  final LoginApi loginApi;

  MyRepo(this.loginApi);

  Future<LoginResponse> login(
      LoginRequest request, String authorizationHeader) async {
    return await loginApi.login(request, authorizationHeader);
  }

  Future<User> signUp(Signup request) async {
    return await loginApi.signUp(request);
  }
}
// ////////////////////////////////////////  sub_categories.dart

class SubCategoriesRepository {
  final LoginApi api;

  SubCategoriesRepository({required this.api});

  Future<SubCategoryResponse> fetchSubCategories() {
    return api.getSubCategories();
  }
}
