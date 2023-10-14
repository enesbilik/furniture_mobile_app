import 'package:flutter/material.dart';

class AppBorder {
  static final AppBorder _singleton = AppBorder._internal();

  factory AppBorder() {
    return _singleton;
  }
  AppBorder._internal();

  final BorderRadius brA10 = const BorderRadius.all(Radius.circular(10));
  final BorderRadius brVB10 =
      const BorderRadius.vertical(bottom: Radius.circular(10));
}
