import 'package:training_flutter/data/repositories/theme_repo.dart';

class ThemeUsecase {
  final themeRepo = ThemeRepository();

  Future<bool?> getTheme() async {
    return await themeRepo.getTheme();
  }

  Future<void> setTheme(bool isDarkMode) async {
    await themeRepo.setTheme(isDarkMode);
  }
}
