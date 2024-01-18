import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final cartRiverpod = ChangeNotifierProvider((_) => CartRiverpod());

class CartRiverpod extends ChangeNotifier {
  double get totalPrice => cartProducts.fold(
        0,
        (previousValue, element) => previousValue += double.parse(
                element.price.replaceAll('\$', '').replaceAll('.', '')) *
            element.amount /
            10,
      );

  void clearCart() {
    cartProducts.clear();
    notifyListeners();
  }

  var cartProducts = [
    // CartProductModel(
    //     title: "Stylish Chair",
    //     price: "\$150.00",
    //     imageUrl:
    //         "https://image-ikea.mncdn.com/urunler/2000_2000/PE873451.jpg"),
  ];

  void addProductToCart(CartProductModel cartProductModel) {
    for (int i = 0; i < cartProducts.length; i++) {
      if (cartProducts[i].title == cartProductModel.title) {
        cartProducts[i].amount++;
        return;
      }
    }
    cartProducts.insert(0, cartProductModel);
  }

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
  final String imageUrl;
  int amount;

  CartProductModel(
      {required this.imageUrl,
      required this.title,
      required this.price,
      this.amount = 1});
}
