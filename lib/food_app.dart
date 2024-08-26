import 'package:fast_food_app_for_learning/constantas/app_color.dart';
import 'package:fast_food_app_for_learning/pages/home_page/home.dart';
import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,

        )
      ),
      home: const HomePage(),
    );
  }
}