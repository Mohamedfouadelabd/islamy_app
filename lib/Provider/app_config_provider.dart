import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {

  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  void changeLanguage(String newLanguage)async {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
 prefs.setString('Language', appLanguage);
  }

  void changeTheme(ThemeMode newTheme) async{
    if (appTheme == newTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
 prefs.setBool('Theme', appTheme==ThemeMode.dark);
  }

  bool isDark() {
    return appTheme == ThemeMode.dark;
  }
}
