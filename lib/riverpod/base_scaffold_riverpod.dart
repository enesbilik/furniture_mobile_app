import 'package:flutter/material.dart';
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
        return const Column();
      case 2:
        return const Column();

      case 3:
        return const Column();

      default:
        return const Column();
    }
  }
}
