import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences? sharedPreferences;

  static Future<void> initCacheHelper() async {
    sharedPreferences = await SharedPreferences.getInstance();
    log('the Cache Helper is init');
  }

  static dynamic getData({required String key}) {
    return sharedPreferences!.get(key);
  }

  static Future<bool> removeData({required String key}) {
    log('remove uId is success');
    log(key.runtimeType.toString());
    log('the key removed from cacheHelper is:- \n$key');
    return sharedPreferences!.remove(key);
  }

  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    } else if (value is String) {
      return await sharedPreferences!.setString(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences!.setStringList(key, value);
    } else if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    } else {
      return await sharedPreferences!.setDouble(key, value);
    }
  }
}
