import 'package:get_storage/get_storage.dart';

class CacheManager {
  static final CacheManager _singleton = CacheManager._internal();

  factory CacheManager() {
    return _singleton;
  }
  CacheManager._internal();

  final _getStorage = GetStorage();

  void clearAllStorage() {
    _getStorage.erase();
  }

  String? readStringValue(CacheKeys key) {
    return _getStorage.read(key.toString());
  }

  void writeStringValue(CacheKeys key, String? value) {
    _getStorage.write(key.toString(), value);
  }

  bool readBoolValue(CacheKeys key) {
    return _getStorage.read(key.toString()) ?? true;
  }

  void writeBoolValue(CacheKeys key, bool value) {
    _getStorage.write(key.toString(), value);
  }
}

enum CacheKeys {
  token,
}
