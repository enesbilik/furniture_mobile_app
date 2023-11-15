import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productDetailRiverpod =
    ChangeNotifierProvider((_) => ProductDetailRiverpod());

class ProductDetailRiverpod extends ChangeNotifier {
  bool isExpanded = false;

  void changeIsExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }

  var product = ProductDetail(
    images: [
      "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
    ],
    title: "Modern Sofa ",
    subtitle: "Arm Chair",
    description:
        "Modern ve şık tasarımıyla dikkat çeken bu kanepe, konfor ve estetiği bir araya getiriyor. Dayanıklı çerçeve yapısı, rahat minderleri ve şık kumaşıyla yaşam alanınızı tamamlıyor. İdeal boyutları sayesinde her türlü dekorasyona uyum sağlayabilen bu kanepe, oturma odalarınızı veya salonlarınızı özel kılıyor. Kaliteli malzemelerle üretilmiş olan ürün, uzun ömürlü kullanım sağlarken, temizliği de kolaylıkla yapılabilir. Her detayı düşünülerek tasarlanmış olan bu kanepe, ailenizle veya misafirlerinizle keyifli vakit geçirmeniz için mükemmel bir seçenek.",
    price: 120.50,
    rating: 4.5,
  );

  void changeFavoriteState() {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }
}

class ProductDetail {
  final List<String> images;
  final String title;
  final String subtitle;
  final String description;
  final double price;
  final double rating;
  bool isFavorite = false;

  ProductDetail(
      {required this.images,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.price,
      required this.rating,
      isFavorite});
}
