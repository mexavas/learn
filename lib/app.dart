import 'package:flutter/material.dart';
import '/features/themes/theme.dart';
import 'package:get/get.dart';
import '/features/screens/splash/splash_screen.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
