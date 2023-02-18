import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sy_travel_animation/features/main_screen/main_screen.dart';
import 'package:sy_travel_animation/utils/assets/app_assets.dart';

class SyTravelApp extends StatelessWidget {
  const SyTravelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        statusBarColor: Platform.isAndroid ? Colors.black : null,
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppAssets.colors.mainBlack,
      ),
      home: const MainScreen(),
    );
  }
}
