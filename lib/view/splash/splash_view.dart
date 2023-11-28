import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/cache/cache_manager.dart';
import 'package:furniture_mobile_app/view/auth/login/login_view.dart';
import 'package:furniture_mobile_app/view/skeleton/skeleton_view.dart';
import 'package:lottie/lottie.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  Future<void> _init() {
    return Future.delayed(const Duration(seconds: 1), () {
      if (CacheManager().readStringValue(CacheKeys.token) != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const SkeletonView()),
            (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginView()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/lotties/loading.json",
          width: 250,
        ),
      ),
    );
  }
}
