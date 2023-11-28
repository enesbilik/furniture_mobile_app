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

  var favoritesProduct = [
    const ProductModel(
      imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg",
      title: "Sofa",
      price: 299.50,
      rating: 2.5,
    ),
    const ProductModel(
      imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE802888.jpg",
      title: "Bed",
      price: 1500.50,
      rating: 4.3,
    ),
    const ProductModel(
      imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE514839.jpg",
      title: "Sofa",
      price: 299.50,
      rating: 2.5,
    ),
    const ProductModel(
      imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg",
      title: "Bed",
      price: 1500.50,
      rating: 4.3,
    ),
  ];
}
