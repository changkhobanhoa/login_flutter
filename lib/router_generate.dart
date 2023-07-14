import 'package:flutter/material.dart';
import '/login_screen.dart';
import '/models/product_model.dart';
import '/screens/auth/splash_screen.dart';
import '/screens/cart/cart_screen.dart';
import '/screens/doashboard/doashboard_screen.dart';
import '/screens/favorite/favorite_screen.dart';
import '/screens/home/home_screen.dart';
import '/screens/products/detail_product_screen.dart';
import 'package:page_transition/page_transition.dart';

class RouterGenerator {
  static const String loginScreen = '/login-screen';
  static const String homeScreen = '/home-screen';
  static const String doashboardScreen = '/doashboard-screen';
  static const String favoriteScreen = '/favorite-screen';
  static const String cartPage = '/cart-screen';
  static const String detailProductPage = '/detail-product-screen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => SplashScreen(), settings: settings);
      case loginScreen:
        return MaterialPageRoute(
            builder: (context) => LoginScreen(), settings: settings);
      case doashboardScreen:
        return MaterialPageRoute(
            builder: (context) => DoashBoardScreen(), settings: settings);
      case favoriteScreen:
        return MaterialPageRoute(
            builder: (context) => FavoriteScreen(), settings: settings);
      case homeScreen:
        return MaterialPageRoute(
            builder: (context) => HomeScreen(), settings: settings);
      case cartPage:
        return MaterialPageRoute(
            builder: (context) => CartScreen(), settings: settings);
      case detailProductPage:
        final args = settings.arguments as Map<dynamic, dynamic>?;
        final products = args?['products'] as Products;
        return PageTransition(
            type: PageTransitionType.fade,
            child: DetailProductScreen(products: products),
            isIos: true,
            duration: Duration(milliseconds: 400));
      default:
        return NotfoundPage();
    }
  }

  static Route NotfoundPage() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
