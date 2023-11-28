import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_riverpod.dart';
import 'package:furniture_mobile_app/view/all_categories/all_categories_view.dart';

class CategoryCard extends ConsumerWidget {
  final String imageUrl;
  final String title;
  const CategoryCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(allCategoriesRiverpod);

    return Expanded(
      child: GestureDetector(
        onTap: () {
          read.setSelectedCategoryIndex(read.categoryNameList.indexOf(title));

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AllCategoriesView()));
        },
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300]!,
                ), // gray border
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(title),
          ],
        ),
      ),
    );
  }
}
