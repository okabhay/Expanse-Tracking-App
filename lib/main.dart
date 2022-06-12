import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mumet/configs/theme.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ThemeManager.initialise();
  setupLocator(environment: Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme,
      lightTheme: MyTheme.lightTheme,
      builder: (context, regularTheme, darkTheme, themeMode) {
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}