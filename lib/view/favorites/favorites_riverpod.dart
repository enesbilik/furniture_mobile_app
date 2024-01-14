import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/models/product_model.dart';

final favoritesRiverpod = ChangeNotifierProvider((_) => FavoritesRiverpod());

class FavoritesRiverpod extends ChangeNotifier {
  void removeProductAtIndex(int index) {
    if (index >= 0 && index < favoritesProduct.length) {
      favoritesProduct.removeAt(index);
      notifyListeners();
    }
  }

  void removeProduct(ProductModel product) {
    favoritesProduct.remove(product);
    notifyListeners();
  }

  void addProduct(ProductModel productModel) {
    favoritesProduct.add(productModel);
    notifyListeners();
  }

  var favoritesProduct = [];
}
