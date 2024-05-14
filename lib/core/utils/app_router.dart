import 'package:go_router/go_router.dart';
import 'package:nectar/feature/bottom%20navigation%20bar/presentation/views/bottom_navigation_bar_view.dart';
import 'package:nectar/feature/explore/presentation/views/explore_view.dart';
import 'package:nectar/feature/explore/presentation/views/products_view.dart';
import 'package:nectar/feature/favorite/favorite_view.dart';
import 'package:nectar/feature/my%20cart/presentation/views/my_cart_view.dart';
import 'package:nectar/feature/my%20cart/presentation/views/successful_view.dart';
import 'package:nectar/feature/profile/profile_view.dart';
import 'package:nectar/feature/shop/shop_view.dart';
import 'package:nectar/feature/splash/presentation/views/landing_view.dart';
import 'package:nectar/feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kLanding = '/landing';
  static const kExplore = '/explore';
  static const kMyCart = '/my_cart';
  static const kProductsView = '/products_view';
  static const kSuccessfulView = '/successful_view';
  static const kBottomNavigationBar = '/bottom_navigation_bar';
  static const kProfileView = '/profile';
  static const kShopView = '/shop';
  static const kFavoriteView = '/favorite';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kLanding,
      builder: (context, state) => const LandingView(),
    ),
    GoRoute(
      path: kExplore,
      builder: (context, state) => const ExploreView(),
    ),
    GoRoute(
      path: kMyCart,
      builder: (context, state) => const MyCartView(),
    ),
    GoRoute(
      path: kProductsView,
      builder: (context, state) => const ProductsView(),
    ),
    GoRoute(
      path: kSuccessfulView,
      builder: (context, state) => const SuccessfulView(),
    ),
    GoRoute(
      path: kBottomNavigationBar,
      builder: (context, state) => const BottomNavigationBarView(),
    ),
    GoRoute(
      path: kProfileView,
      builder: (context, state) => const ProfileView(),
    ),
    GoRoute(
      path: kShopView,
      builder: (context, state) => const ShopView(),
    ),
    GoRoute(
      path: kFavoriteView,
      builder: (context, state) => const FavoriteView(),
    ),
  ]);
}
