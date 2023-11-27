import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/product_detail/product_detail_riverpod.dart';

class ProductDetailView extends ConsumerStatefulWidget {
  const ProductDetailView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailViewState();
}

class _ProductDetailViewState extends ConsumerState<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var watch = ref.watch(productDetailRiverpod);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        actions: [
          IconButton(
            onPressed: () {
              watch.changeFavoriteState();
            },
            icon: Icon(
              watch.product.isFavorite
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
                  items: watch.product.images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.network(
                          i,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: AppPadding().pH15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            watch.product.subtitle,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star_half_rounded,
                            color: Colors.amber,
                          ),
                          Text("4.5")
                        ],
                      ),
                      Text(
                        watch.product.title,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        watch.isExpanded
                            ? watch.product.description
                            : watch.product.description.substring(0, 300),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      if (watch.product.description.length > 200)
                        GestureDetector(
                          onTap: () {
                            watch.changeIsExpanded();
                          },
                          child: Text(
                            watch.isExpanded ? "Küçült" : "Daha Fazla",
                            style: TextStyle(
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
            padding: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                  spreadRadius: 2, // Yayılma yarıçapı
                  blurRadius: 4, // Bulanıklık yarıçapı
                  offset: Offset(0, -2), // Gölgenin konumu (x, y)
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
                      "Total Price",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Text(
                      "\$${watch.product.price}",
                      style: TextStyle(
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
                    onPressed: () {},
                    child: Row(
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
                          "Add to Cart",
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
