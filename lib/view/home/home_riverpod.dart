import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRiverpod = ChangeNotifierProvider((_) => HomeRiverpod());

class HomeRiverpod extends ChangeNotifier {}
