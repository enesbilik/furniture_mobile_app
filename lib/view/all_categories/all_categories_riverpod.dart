import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allCategoriesRiverpod =
    ChangeNotifierProvider((_) => AllCategoriesRiverpod());

class AllCategoriesRiverpod extends ChangeNotifier {
  int selectedCategoryIndex = 0;

  var categoryNameList = [
    "All",
    "Sofa",
    "Chair",
    "Table",
    "Bed",
    "Dining Table",
    "Bookshelf",
    "Lamp",
    "Wardrobe",
    "Cabinet",
    "Coffee Table",
    "Nightstand",
    "Dresser",
    "Desk",
    "Console Table"
  ];

  void setSelectedCategoryIndex(int newIndex) {
    selectedCategoryIndex = newIndex;
    notifyListeners();
  }

  var productData = {
    "All": [
      {"title": "Ürün 1", "imageUrl": "url1", "rating": 4.5, "price": 299.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},
      {"title": "Ürün 2", "imageUrl": "url2", "rating": 4.0, "price": 199.99},

      // Diğer örnek ürünler...
    ],
    "Sofa": [
      {
        "title": "Sofa 1",
        "imageUrl": "sofa_url1",
        "rating": 4.5,
        "price": 799.99
      },
      {
        "title": "Sofa 2",
        "imageUrl": "sofa_url2",
        "rating": 4.0,
        "price": 599.99
      },
      {
        "title": "Sofa 3",
        "imageUrl": "sofa_url2",
        "rating": 4.0,
        "price": 599.99
      },
      // Diğer kanepe örnekleri...
    ],
    "Chair": [
      {
        "title": "Sandalye 1",
        "imageUrl": "chair_url1",
        "rating": 4.2,
        "price": 89.99
      },

      // Diğer sandalye örnekleri...
    ],
    "Table": [
      {
        "title": "Masa 1",
        "imageUrl": "table_url1",
        "rating": 4.1,
        "price": 149.99
      },
      {
        "title": "Masa 2",
        "imageUrl": "table_url2",
        "rating": 4.3,
        "price": 179.99
      },
      {
        "title": "Masa 3",
        "imageUrl": "table_url2",
        "rating": 4.3,
        "price": 179.99
      },
      {
        "title": "Masa 4",
        "imageUrl": "table_url2",
        "rating": 4.3,
        "price": 179.99
      },
      // Diğer masa örnekleri...
    ],
    "Bed": [
      {
        "title": "Yatak 1",
        "imageUrl": "bed_url1",
        "rating": 4.6,
        "price": 399.99
      },
      {
        "title": "Yatak 2",
        "imageUrl": "bed_url2",
        "rating": 4.7,
        "price": 449.99
      },
      // Diğer yatak örnekleri...
    ],
    "Dining Table": [
      {
        "title": "Yemek Masası 1",
        "imageUrl": "dining_table_url1",
        "rating": 4.4,
        "price": 249.99
      },
      {
        "title": "Yemek Masası 2",
        "imageUrl": "dining_table_url2",
        "rating": 4.5,
        "price": 299.99
      },
      // Diğer yemek masası örnekleri...
    ],
    "Bookshelf": [
      {
        "title": "Kitaplık 1",
        "imageUrl": "bookshelf_url1",
        "rating": 4.3,
        "price": 179.99
      },

      // Diğer kitaplık örnekleri...
    ],
    "Lamp": [
      {
        "title": "Lamba 1",
        "imageUrl": "lamp_url1",
        "rating": 4.7,
        "price": 49.99
      },
      {
        "title": "Lamba 2",
        "imageUrl": "lamp_url2",
        "rating": 4.6,
        "price": 59.99
      },
      {
        "title": "Lamba 3",
        "imageUrl": "lamp_url2",
        "rating": 4.6,
        "price": 59.99
      },
      {
        "title": "Lamba 4",
        "imageUrl": "lamp_url2",
        "rating": 4.6,
        "price": 59.99
      },
      {
        "title": "Lamba 5",
        "imageUrl": "lamp_url2",
        "rating": 4.6,
        "price": 59.99
      },
      {
        "title": "Lamba 6",
        "imageUrl": "lamp_url2",
        "rating": 4.6,
        "price": 59.99
      },
      // Diğer lamba örnekleri...
    ],
    "Wardrobe": [
      {
        "title": "Gardırop 1",
        "imageUrl": "wardrobe_url1",
        "rating": 4.5,
        "price": 349.99
      },
      {
        "title": "Gardırop 2",
        "imageUrl": "wardrobe_url2",
        "rating": 4.4,
        "price": 379.99
      },
      // Diğer gardırop örnekleri...
    ],
  };
}
