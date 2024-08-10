import 'package:flutter/material.dart';
import '/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(const App());
}
