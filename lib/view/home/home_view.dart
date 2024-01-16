import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_riverpod.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_view.dart';
import 'package:furniture_mobile_app/view/home/home_riverpod.dart';
import 'package:furniture_mobile_app/widgets/category_card.dart';
import 'package:furniture_mobile_app/widgets/custom_search_delegate.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field.dart';
import 'package:furniture_mobile_app/widgets/product_card.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late TextEditingController controller1;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var watchAllCategoriesRiverpod = ref.watch(allCategoriesRiverpod);
    var productList = watchAllCategoriesRiverpod.productData["Hepsi"]!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppPadding().pA15,
                child: CustomTextField(
                  autofocus: false,
                  hintText: 'Mobilya ara',
                  controller: controller1,
                  icon: const Icon(Icons.search_outlined),
                  onTap: () {
                    var newProdList = productList.map((e) => e.title).toList();
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(newProdList, productList),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  viewportFraction: 1,
                ),
                items: watch.sliderImages.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.network(
                        i,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  );
                }).toList(),
              ),

              // Image.network(
              //   "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/furniture-banner-template-design-a636dbc0cd8fcad1e4f5c65dc3746501_screen.jpg?ts=1609919679",
              //   height: 200,
              //   width: double.infinity,
              //   fit: BoxFit.fitWidth,
              // ),
              const SizedBox(height: 25),
              Padding(
                padding: AppPadding().pH15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Kategoriler",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        watchAllCategoriesRiverpod.setSelectedCategoryIndex(
                            watchAllCategoriesRiverpod.categoryNameList
                                .indexOf("Hepsi"));

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllCategoriesView(),
                          ),
                        );
                      },
                      child: const Text("Hepsini gör"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: AppPadding().pH15,
                child: const SizedBox(
                  child: Row(
                    children: [
                      CategoryCard(
                        imageUrl:
                            "https://image-ikea.mncdn.com/urunler/2000_2000/PE514839.jpg",
                        title: "Koltuk",
                      ),
                      CategoryCard(
                          imageUrl:
                              "https://image-ikea.mncdn.com/urunler/500_500/PE736167.jpg",
                          title: "Sandalye"),
                      CategoryCard(
                        imageUrl:
                            "https://image-ikea.mncdn.com/urunler/500_500/PE740884.jpg",
                        title: "Masa",
                      ),
                      CategoryCard(
                        imageUrl:
                            "https://image-ikea.mncdn.com/urunler/2000_2000/PE802888.jpg",
                        title: "Yatak",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: AppPadding().pH15,
                child: const Text(
                  "En yeniler",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: AppPadding().pH10,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemCount:
                      watchAllCategoriesRiverpod.productData["Hepsi"]!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(
                      productModel: productList[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
