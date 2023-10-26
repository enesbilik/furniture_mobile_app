import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/widgets/product_card.dart';

class FavoritesView extends ConsumerStatefulWidget {
  const FavoritesView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends ConsumerState<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Favorites",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: AppPadding().pA10,
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return const ProductCard(
                title: "Sofa",
                price: 17.5,
                rating: 3.5,
                imageUrl:
                    "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
              );
            },
          ),
        ),
      ),
    );
  }
}
