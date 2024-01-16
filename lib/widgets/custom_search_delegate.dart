import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/models/product_model.dart';
import 'package:furniture_mobile_app/view/product_detail/product_detail_view.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<String> searchTerms;
  final List<ProductModel> productModels;
  CustomSearchDelegate(this.searchTerms, this.productModels);

  @override
  String get searchFieldLabel => 'Mobilya ara';

  // var searchTerms = ["Koltuk", "Sandalye", "Masa", "Yatak", "Sehpa"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios_outlined),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var productModel = productModels[index];
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailView(
                  productModel: productModel,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        var productModel = productModels[index];

        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailView(
                  productModel: productModel,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
