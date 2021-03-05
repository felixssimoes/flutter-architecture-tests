import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final secureStoreProvider = Provider((_) => SecureStoreService());

class SecureStoreService {
  Future<String?> getSecureValueForKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> setSecureValue(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<void> deleteValueForKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
