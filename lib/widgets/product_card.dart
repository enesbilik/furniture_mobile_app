import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/constants/borders.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/product_detail/product_detail_view.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double rating;
  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailView(),
                ),
              );
            },
            child: Container(
              padding: AppPadding().pA20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: AppBorder().brA10,
                border: Border.all(
                  color: Colors.grey[100]!,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0.6,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: AppPadding().pA20,
                child: Image.network(imageUrl),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(
                    "\$$price",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_half_rounded,
                    color: Colors.amber,
                  ),
                  Text(
                    price.toString(),
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
