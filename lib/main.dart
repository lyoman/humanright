import 'package:flutter/material.dart';
import 'utils/color.dart' as color;
import './screens/splash_screen.dart';
import './utils/constants.dart' ;

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appNameText,
      theme: ThemeData(
        primaryColor: color.primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: color.accentColor),
      ),
      home: const SplashScreen(title: appNameText),
    );
  }
}
