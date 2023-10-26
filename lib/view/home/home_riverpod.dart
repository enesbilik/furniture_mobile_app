import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRiverpod = ChangeNotifierProvider((_) => HomeRiverpod());

class HomeRiverpod extends ChangeNotifier {
  var sliderImages = [
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/furniture-banner-template-design-a636dbc0cd8fcad1e4f5c65dc3746501_screen.jpg?ts=1609919679",
    "https://t4.ftcdn.net/jpg/05/08/17/01/360_F_508170187_4Oonk4IG8u9eyfwSUvTASkT8hl71vRX2.jpg",
    "https://t4.ftcdn.net/jpg/04/66/25/33/360_F_466253361_c4fAjCqVZD4L2boH8vfqjUbUYk0wLcP7.jpg"
  ];
}
