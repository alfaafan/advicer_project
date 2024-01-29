import 'package:flutter/material.dart';
import 'package:training_flutter/domain/usecases/theme_usecase.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;
  final ThemeUsecase themeUsecase;

  ThemeService({required this.themeUsecase}) {
    init();
  }

  void init() async {
    try {
      isDarkModeOn = await themeUsecase.getTheme() ?? false;
      notifyListeners();
    } catch (e) {
      throw Exception('Error setting theme: $e');
    }
  }

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
    try {
      themeUsecase.setTheme(isDarkModeOn);
    } catch (e) {
      throw Exception('Error setting theme: $e');
    }
  }
}
