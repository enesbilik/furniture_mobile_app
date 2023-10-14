import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/riverpod/base_scaffold_riverpod.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((_) => BaseScaffoldRiverpod());
