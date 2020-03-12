import 'package:shared_preferences/shared_preferences.dart';

class SpLogin{

  static Future<bool> setToken(String token) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token) ?? false;
  }

  static Future<String> getToken() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('token') ?? '';
  }

  static Future<bool> setDatas(String datas) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('datas', datas) ?? false;
  }

  static Future<String> getDatas() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('datas') ?? '';
  }
  
  static removePref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove('token');
    prefs.remove('datas');
  }
}