// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeSetting extends ChangeNotifier {
  bool current = false;
  bool get _current => current;

  ThemeSetting(bool isDark) {
    if (isDark) {
      current = true;
    } else {
      current = false;
    }
  }

  void toogleTheme() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    if (current == false) {
      current = true;
      shared.setBool('is_Dark', true);
    } else {
      current = false;
      shared.setBool('is_Dark', false);
    }
    notifyListeners();
  }
}
