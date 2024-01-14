import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/models/product_model.dart';

final productDetailRiverpod =
    ChangeNotifierProvider((_) => ProductDetailRiverpod());

class ProductDetailRiverpod extends ChangeNotifier {
  bool isExpanded = false;

  void changeIsExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }

  void changeFavoriteState(ProductModel product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }
}
