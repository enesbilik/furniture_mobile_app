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
      type: BottomNavigationBarType.fixed,
      currentIndex: watch.currentIndex,
      onTap: (index) => read.setCurrentIndex(index),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedIconTheme: const IconThemeData(color: Colors.black),
      elevation: 1,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_rounded,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: ""),
      ],
    );
  }
}
