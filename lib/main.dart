import 'package:ecommerce/feature/view/splash_screen.dart/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'feature/core/myTheme.dart';

void main() {
  runApp(GetMaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.instance.lightTheme));
}
