import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const CategoryCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width / 5,
          padding: AppPadding().pA10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text("Sofa"),
      ],
    );
  }
}
