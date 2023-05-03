import 'package:shared_preferences/shared_preferences.dart';

enum keys { showIntrodactionBefor }

class SharedPref {
  void addNewState(String key, dynamic value) async {
    final instance = await SharedPreferences.getInstance();
    if (value is String) {
      instance.setString(key, value);
    } else if (value is int) {
      instance.setInt(key, value);
    } else if (value is double) {
      instance.setDouble(key, value);
    } else if (value is bool) {
      instance.setBool(key, value);
    }
  }

  Future<Object?> getState(String key) async {
    final instance = await SharedPreferences.getInstance();
    return instance.get(key);
  }
}
