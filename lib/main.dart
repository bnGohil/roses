import 'package:flutter/material.dart';
import 'package:roses/colors/app_colors.dart';
import 'package:roses/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: AppColors.transparent,
            cursorColor: AppColors.transparent,
            selectionHandleColor: AppColors.transparent,
          )
      ),
      home: const SplashScreen(),
    );
  }
}


