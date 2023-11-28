import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/favorites/favorites_riverpod.dart';
import 'package:furniture_mobile_app/widgets/favorite_product_card.dart';

class FavoritesView extends ConsumerStatefulWidget {
  const FavoritesView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends ConsumerState<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(favoritesRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Favorites",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: AppPadding().pA10,
          child: SizedBox.expand(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              itemCount: watch.favoritesProduct.length,
              itemBuilder: (BuildContext context, int index) {
                return FavoriteProductCard(
                  index: index,
                  productModel: watch.favoritesProduct[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
