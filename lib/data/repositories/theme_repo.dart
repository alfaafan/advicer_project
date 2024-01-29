import 'package:training_flutter/data/datasources/theme_local_datasource.dart';

class ThemeRepository {
  final ThemeDataSource dataSource = ThemeDataSource();

  Future<bool?> getTheme() async {
    return await dataSource.getTheme();
  }

  Future<void> setTheme(bool isDarkMode) async {
    await dataSource.setTheme(isDarkMode);
  }
}
