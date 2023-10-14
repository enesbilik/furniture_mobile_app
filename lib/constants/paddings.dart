import 'package:flutter/material.dart';

class AppPadding {
  static final AppPadding _singleton = AppPadding._internal();

  factory AppPadding() {
    return _singleton;
  }
  AppPadding._internal();

  final EdgeInsets pA20 = const EdgeInsets.all(20);
  final EdgeInsets pA15 = const EdgeInsets.all(15);
  final EdgeInsets pA10 = const EdgeInsets.all(10);
  final EdgeInsets pH20 = const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets pH15 = const EdgeInsets.symmetric(horizontal: 15);
  final EdgeInsets pV20 = const EdgeInsets.symmetric(vertical: 20);
  final EdgeInsets pV15 = const EdgeInsets.symmetric(vertical: 15);
}
