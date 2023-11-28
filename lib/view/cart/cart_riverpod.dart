import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartRiverpod = ChangeNotifierProvider((_) => CartRiverpod());

class CartRiverpod extends ChangeNotifier {
  double totalPrice = 0;

  void updateTotalPrice() {
    totalPrice = 0;
    for (var product in cartProducts) {
      double productPrice =
          double.parse(product.price.replaceAll('\$', '').replaceAll('.', ''));
      totalPrice += productPrice * (product.amount);
    }
    totalPrice /= 100;
    notifyListeners();
  }

  var cartProducts = [
    CartProductModel(
        title: "Stylish Chair",
        price: "\$150.00",
        imageUrl:
            "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg"),
    CartProductModel(
        title: "Coffee Table",
        price: "\$99.99",
        amount: 4,
        imageUrl:
            "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg"),
    CartProductModel(
        title: "Side Table",
        price: "\$49.99",
        imageUrl:
            "https://image-ikea.mncdn.com/urunler/2000_2000/PE802888.jpg"),
    CartProductModel(
        title: "Rug",
        price: "\$69.00",
        amount: 3,
        imageUrl:
            "https://image-ikea.mncdn.com/urunler/2000_2000/PE514839.jpg"),
    CartProductModel(
        title: "Throw Pillow",
        price: "\$9.99",
        imageUrl:
            "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg"),
  ];

  void incrementProductAmount(int index) {
    if (index >= 0 && index < cartProducts.length) {
      cartProducts[index].amount++;
      notifyListeners();
    }
    updateTotalPrice();
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
    updateTotalPrice();
  }
}

class CartProductModel {
  final String title;
  final String price;
  final String imageUrl;
  int amount;

  CartProductModel(
      {required this.imageUrl,
      required this.title,
      required this.price,
      this.amount = 1});
}
