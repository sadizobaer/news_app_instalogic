import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/my_favorites/bindings/my_favorites_binding.dart';
import '../modules/my_favorites/views/my_favorites_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MY_FAVORITES,
      page: () => const MyFavoritesView(),
      binding: MyFavoritesBinding(),
    ),
  ];
}
