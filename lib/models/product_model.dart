import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';

class ProductModel {
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final double rating;
  bool isFavorite;

  ProductModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
    required this.description,
    this.isFavorite = false,
  });

  CartProductModel toCartModel() {
    return CartProductModel(
      imageUrl: imageUrl,
      price: price.toString(),
      title: title,
    );
  }
}
