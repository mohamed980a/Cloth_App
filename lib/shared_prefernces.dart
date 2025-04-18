import 'package:shared_preferences/shared_preferences.dart';

class CacheNetwork {
  static late SharedPreferences sharedPreferences;

  /// Call this once in main() before using any cache methods
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Save a key-value pair to local storage
  static Future<bool> insertToCache({
    required String key,
    required String value,
  }) async {
    return await sharedPreferences.setString(key, value);
  }

  /// Retrieve a value from local storage
  static String getCacheData({
    required String key,
  }) {
    return sharedPreferences.getString(key) ?? "";
  }

  /// Remove a specific item from local storage
  static Future<bool> deleteCacheItem({
    required String key,
  }) async {
    return await sharedPreferences.remove(key);
  }
}
