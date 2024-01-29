import 'package:training_flutter/application/pages/advice/advice_page.dart';
import 'package:training_flutter/domain/usecases/theme_usecase.dart';
import 'package:training_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/application/core/services/theme_service.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(themeUsecase: ThemeUsecase()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const AdvicerPageWrapperProvider(),
      );
    });
  }
}
