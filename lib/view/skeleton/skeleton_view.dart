import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/riverpod/base_scaffold_riverpod.dart';
import 'package:furniture_mobile_app/riverpod/riverpod_management.dart';

class SkeletonView extends ConsumerStatefulWidget {
  const SkeletonView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SkeletonViewState();
}

class _SkeletonViewState extends ConsumerState<SkeletonView> {
  @override
  Widget build(BuildContext context) {
    var read = ref.read(baseScaffoldRiverpod);
    var watch = ref.watch(baseScaffoldRiverpod);
    return Scaffold(
      body: watch.body(),
      bottomNavigationBar: _bottomBar(read, watch),
    );
  }

  Widget _bottomBar(BaseScaffoldRiverpod read, BaseScaffoldRiverpod watch) {
    return BottomNavigationBar(
      iconSize: 24,
      type: BottomNavigationBarType.fixed,
      currentIndex: watch.currentIndex,
      onTap: (index) => read.setCurrentIndex(index),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      elevation: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Anasayfam",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
          ),
          label: "Favorilerim",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket_outlined,
          ),
          label: "Sepetim",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
          ),
          label: "Hesabım",
        ),
      ],
    );
  }
}
