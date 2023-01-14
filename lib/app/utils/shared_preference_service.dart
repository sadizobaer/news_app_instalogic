/*
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService extends GetxService {
  static SharedPreferenceService to = Get.find();
  static const String TOKEN = "token";
  static late SharedPreferences _sharedPreferences;

  Future<SharedPreferenceService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  static String? getToken() {
    return _sharedPreferences.getString(TOKEN);
  }

  static void setToken(String token) {
    _sharedPreferences.setString(TOKEN, token);
  }

  static String? getDeviceToken() {
    return _sharedPreferences.getString(DEVICE_TOKEN);
  }

  static void setDeviceToken(String token) {
    _sharedPreferences.setString(DEVICE_TOKEN, token);
  }

  static String? getUserId() {
    return _sharedPreferences.getString(USER_ID);
  }

  static void setUserId(String userId) {
    _sharedPreferences.setString(USER_ID, userId);
  }

  static Future<void> clear() async {
    await _sharedPreferences.clear();
    return;
  }
}
*/
