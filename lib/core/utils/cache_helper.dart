import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences? sharedPreferences;

  static Future<void> initCacheHelper() async {
    sharedPreferences = await SharedPreferences.getInstance();
    log('the Cache Helper is init');
  }

  static dynamic getData({required String key}) {
    log(key.runtimeType.toString());
    log('the key get from cacheHelper is:- \n$key');
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
      log(value.runtimeType.toString());
      log('the value saved from cacheHelper is:- \n$value');
      return await sharedPreferences!.setInt(key, value);
    } else if (value is String) {
      log(value.runtimeType.toString());
      log('the value saved from cacheHelper is:- \n$value');
      return await sharedPreferences!.setString(key, value);
    } else if (value is bool) {
      log(value.runtimeType.toString());
      log('the value saved from cacheHelper is:- \n$value');
      return await sharedPreferences!.setBool(key, value);
    } else {
      log(value.runtimeType.toString());
      log('the value saved from cacheHelper is:- \n$value');
      return await sharedPreferences!.setDouble(key, value);
    }
  }
}
