import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/view/cart/cart_view.dart';
import 'package:furniture_mobile_app/view/favorites/favorites_view.dart';
import 'package:furniture_mobile_app/view/home/home_view.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const FavoritesView();
      case 2:
        return const CartView();

      case 3:
        return const Column();

      default:
        return const Column();
    }
  }
}
