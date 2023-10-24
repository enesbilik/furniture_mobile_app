import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_view.dart';
import 'package:furniture_mobile_app/widgets/category_card.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field.dart';
import 'package:furniture_mobile_app/widgets/product_card.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPadding().pA20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextField(
                  autofocus: true,
                  hintText: 'Search Furniture',
                  icon: Icon(Icons.search_outlined),
                ),
                const SizedBox(height: 25),
                Image.network(
                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/furniture-banner-template-design-a636dbc0cd8fcad1e4f5c65dc3746501_screen.jpg?ts=1609919679",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategoriesView()),
                        );
                      },
                      child: Text("See All"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width / 3.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(imageUrl: "imageUrl", title: "title"),
                      CategoryCard(imageUrl: "imageUrl", title: "title"),
                      CategoryCard(imageUrl: "imageUrl", title: "title"),
                      CategoryCard(imageUrl: "imageUrl", title: "title"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Newest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
