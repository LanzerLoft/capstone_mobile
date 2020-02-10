import 'package:shared_preferences/shared_preferences.dart';

class SpLogin{
  static final String _token = '';

  static Future<bool> setToken(String token) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_token, token) ?? false;
  }

  static Future<String> getToken() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString(_token) ?? '';
  }

  static removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.clear();
  }
}