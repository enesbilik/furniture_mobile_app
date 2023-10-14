import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/constants/colors.dart';

class TextThemeData {
  final titleTheme = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500, //medium
  );
  final title21Semi = const TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  final subtitleTheme = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColor.grey,
  );
  final cardTitle = const TextStyle(
    color: AppColor.titleBlack,
    fontSize: 16,
    fontWeight: FontWeight.w500, //Medium
  );

  final titleTheme2 = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400, //regular
  );
  final titleThemeSemi = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600, //semi bold
  );
  final bodyMedium13 = const TextStyle(
    color: AppColor.black,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  final bodyReg13 = const TextStyle(
    color: AppColor.textGrey,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
}
