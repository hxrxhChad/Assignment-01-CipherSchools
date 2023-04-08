// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  //KEYS
  static String themeKey = "isDark";

  //SAVING THE DATA

  static Future<bool> saveTheme(bool isDark) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(themeKey, isDark);
  }

  //GETTING THE DATA FROM SF

  static Future<bool?> getTheme() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(themeKey);
  }
}
