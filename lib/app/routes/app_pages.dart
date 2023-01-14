import 'package:get/get.dart';
import 'package:news_app/app/modules/home/bindings/home_binding.dart';
import 'package:news_app/app/modules/home/views/home_view.dart';
import 'package:news_app/app/modules/login/bindings/login_binding.dart';
import 'package:news_app/app/modules/login/views/login_view.dart';
import 'package:news_app/app/modules/my_favorites/bindings/my_favorites_binding.dart';
import 'package:news_app/app/modules/my_favorites/views/my_favorites_view.dart';
import 'package:news_app/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:news_app/app/modules/sign_up/views/sign_up_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.LOGIN;

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
