import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartRiverpod = ChangeNotifierProvider((_) => CartRiverpod());

class CartRiverpod extends ChangeNotifier {
  var cartProducts = [
    CartProductModel(title: "Stylish Chair", price: "\$150.00"),
    CartProductModel(title: "Coffee Table", price: "\$99.99"),
    CartProductModel(title: "Desk Lamp", price: "\$29.95"),
    CartProductModel(title: "Couch", price: "\$499.99"),
    CartProductModel(title: "Bookshelf", price: "\$89.50"),
    CartProductModel(title: "Dining Table", price: "\$299.00"),
    CartProductModel(title: "Side Table", price: "\$49.99"),
    CartProductModel(title: "Wall Art", price: "\$19.99"),
    CartProductModel(title: "Rug", price: "\$69.00"),
    CartProductModel(title: "Throw Pillow", price: "\$9.99"),
  ];

  void incrementProductAmount(int index) {
    if (index >= 0 && index < cartProducts.length) {
      cartProducts[index].amount++;
      notifyListeners();
    }
  }

  void decrementProductAmount(int index) {
    if (index >= 0 && index < cartProducts.length) {
      var product = cartProducts[index];
      if (product.amount > 0) {
        product.amount--;

        if (product.amount == 0) {
          cartProducts.removeAt(index);
        }
      }
      notifyListeners();
    }
  }
}

class CartProductModel {
  final String title;
  final String price;
  int amount = 1;

  CartProductModel({
    required this.title,
    required this.price,
  });
}
