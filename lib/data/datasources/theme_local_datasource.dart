import 'package:shared_preferences/shared_preferences.dart';

class ThemeDataSource {
  static const String themeKey = 'isDarkMode';

  Future<bool?> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeKey);
  }

  Future<void> setTheme(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeKey, isDarkMode);
  }
}
