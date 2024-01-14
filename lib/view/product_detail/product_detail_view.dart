import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/models/product_model.dart';
import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';
import 'package:furniture_mobile_app/view/favorites/favorites_riverpod.dart';
import 'package:furniture_mobile_app/view/product_detail/product_detail_riverpod.dart';

class ProductDetailView extends ConsumerStatefulWidget {
  final ProductModel productModel;
  const ProductDetailView({
    super.key,
    required this.productModel,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailViewState();
}

class _ProductDetailViewState extends ConsumerState<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var watch = ref.watch(productDetailRiverpod);
    var watchFavorites = ref.watch(favoritesRiverpod);
    var watchCart = ref.watch(cartRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobilya Detayı"),
        actions: [
          IconButton(
            onPressed: () {
              if (widget.productModel.isFavorite) {
                watchFavorites.removeProduct(widget.productModel);
              } else {
                watchFavorites.addProduct(widget.productModel);
              }

              watch.changeFavoriteState(widget.productModel);
            },
            icon: Icon(
              widget.productModel.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: height * 0.25,
                    autoPlay: true,
                    viewportFraction: 1,
                  ),
                  items: [
                    Image.network(
                      widget.productModel.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: AppPadding().pH15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.productModel.title,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.star_half_rounded,
                            color: Colors.amber,
                          ),
                          Text(widget.productModel.rating.toString())
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "Açıklama",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        watch.isExpanded
                            ? widget.productModel.description
                            : widget.productModel.description.length > 200
                                ? widget.productModel.description
                                    .substring(0, 200)
                                : widget.productModel.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      if (widget.productModel.description.length > 200)
                        GestureDetector(
                          onTap: () {
                            watch.changeIsExpanded();
                          },
                          child: Text(
                            watch.isExpanded ? "Küçült" : "Daha Fazla",
                            style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                  spreadRadius: 2, // Yayılma yarıçapı
                  blurRadius: 4, // Bulanıklık yarıçapı
                  offset: const Offset(0, -2), // Gölgenin konumu (x, y)
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fiyat",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Text(
                      "${widget.productModel.price} TL",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: AppPadding().pV15,
                  height: 56,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    onPressed: () {
                      var cartProductModel = widget.productModel.toCartModel();
                      watchCart.addProductToCart(cartProductModel);
                      AnimatedSnackBar.material(
                        'Ürün sepete eklendi',
                        type: AnimatedSnackBarType.success,
                        mobileSnackBarPosition: MobileSnackBarPosition.top,
                        borderRadius: BorderRadius.circular(12),
                        duration: Duration(seconds: 2),
                      ).show(context);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_basket_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Sepete Ekle",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
