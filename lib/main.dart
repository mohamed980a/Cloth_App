import 'package:cloyhapp/cubit/add_to_cart.dart';
import 'package:cloyhapp/cubit/all_categories_cubit.dart';
import 'package:cloyhapp/cubit/all_products_on_category_cubit.dart';
import 'package:cloyhapp/cubit/cubit_cubit.dart';
import 'package:cloyhapp/cubit/forgotpassword_cubit.dart';
import 'package:cloyhapp/cubit/sub_categories_cubit.dart';
import 'package:cloyhapp/features/Catalog/logic/repo_catlog.dart';
import 'package:cloyhapp/features/Home/presentation/logic/details_product_repo.dart';
import 'package:cloyhapp/shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:cloyhapp/core/app_router.dart';
import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/core/repo/repo.dart';

import 'core/Utils/constant.dart';
import 'cubit/get_new_products_cubit.dart';
import 'cubit/get_sales_products_cubit.dart';
import 'cubit/getproductscategory_cubit.dart';
import 'cubit/wishlist_cubit.dart';

import 'features/Catalog/logic/catlog_cubit.dart';
import 'features/Home/presentation/logic/detalis_product_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.init();

  token = CacheNetwork.getCacheData(key: 'token');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final apiService = LoginApi(dio);
    final repo = MyRepo(apiService);
    final repos = ForgotPasswordRepository(apiClient: apiService);
    final subCategoriesRepo = SubCategoriesRepository(api: apiService);
    final allCategoriesRepo = AllCategoriesRepository(api: apiService);
    final newProductRepo = ProductCubit(apiService: apiService);
    final salesProductRepo = ProductSalesCubit(apiService: apiService);
    final wisihlistProductRepo = WishlistRepository(apiClient: apiService);
    // final favRepository =
    //     GetProductsCategoryRepository(apiService);
    final allProductsOnCategoryRepo =
        AllProductOnCategoryRepository(apiService);
    final productDetailsRepo = ProductDetailsRepository(apiService);
    final addToCartRepo = AddToCartRepository(apiClient: apiService);

    return MultiBlocProvider(
      providers: [
        BlocProvider<ForgotPasswordCubit>(
          create: (_) => ForgotPasswordCubit(repository: repos),
        ),
        BlocProvider<SignupCubit>(
          create: (_) => SignupCubit(repo),
        ),
        BlocProvider<SubCategoriesCubit>(
          create: (_) =>
              SubCategoriesCubit(subCategoriesRepo)..getSubCategories(),
        ),
        BlocProvider<AllCategoriesCubit>(
          create: (_) =>
              AllCategoriesCubit(allCategoriesRepo)..getAllCategories(),
        ),
        BlocProvider<ProductCubit>(
          create: (_) => newProductRepo,
        ),
        BlocProvider(
          create: (_) =>
              ProductCubit(apiService: apiService)..fetchNewProducts(10, 1),
        ),
        BlocProvider(
          create: (_) => ProductSalesCubit(apiService: apiService)
            ..fetchPSalesroducts(10, 1),
        ),
        BlocProvider<WishlistCubit>(
          create: (_) => WishlistCubit(wisihlistProductRepo),
        ),
        // BlocProvider<GetproductscategoryCubit>(
        //   create: (_) => GetproductscategoryCubit(getProductsCategoryRepository)
        //     ..Getproductscategory(),
        // ),
        BlocProvider<ProductOnCategoryCubitMohamed>(
            create: (_) =>
                ProductOnCategoryCubitMohamed(allProductsOnCategoryRepo)
                  ..fetchProducts(
                    categoryId: '67f14eac0cfab7d1165898a6',
                    bearerToken: 'Bearer $token',
                    limit: 7,
                    subcategoryId: '621459855866598',
                  )),
        // BlocProvider<ProductOnCategoryCubitMohamed>(create: (_)=>
        //     ProductOnCategoryCubitMohamed(productOnCategoryRepo,token!)..fetchProductsByCategoryMohamed('1')),

        BlocProvider<ProductDetailsCubit>(
          create: (_) => ProductDetailsCubit(productDetailsRepo),
        ),
        BlocProvider<AddToCartCubit>(
          create: (_) => AddToCartCubit(addToCartRepo),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
