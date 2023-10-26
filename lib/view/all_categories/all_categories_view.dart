import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_riverpod.dart';
import 'package:furniture_mobile_app/widgets/product_card.dart';

class AllCategoriesView extends ConsumerStatefulWidget {
  const AllCategoriesView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllCategoriesViewState();
}

class _AllCategoriesViewState extends ConsumerState<AllCategoriesView> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(allCategoriesRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tüm Kategoriler"),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: AppPadding().pA20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: watch.productData.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      watch.setSelectedCategoryIndex(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: watch.selectedCategoryIndex == index
                            ? Colors.greenAccent
                            : Colors.grey[200],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Text(watch.productData.keys.elementAt(index)),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8),
                itemCount: watch
                    .productData[
                        watch.categoryNameList[watch.selectedCategoryIndex]]!
                    .length,
                itemBuilder: (BuildContext context, int index) {
                  var product = watch.productData[
                          watch.categoryNameList[watch.selectedCategoryIndex]]!
                      .elementAt(index);
                  return ProductCard(
                    title: product["title"] as String,
                    price: 17.5,
                    rating: 3.5,
                    imageUrl:
                        "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
