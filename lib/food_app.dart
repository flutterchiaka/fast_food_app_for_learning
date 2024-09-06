import 'package:fast_food_app_for_learning/constantas/app_color.dart';
import 'package:fast_food_app_for_learning/pages/home_page/view_all_pages/view_all_pages.dart';
import 'package:fast_food_app_for_learning/pages/intro_page/intro.dart';
import 'package:flutter/material.dart';

import 'pages/home_page/home.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.primaryColor,
          )),
      initialRoute: "/",
      routes: {
        "/": (ctx) => const IntroPage(),
        "/home": (ctx) => const HomePage(),
        "/viewAllProducts": (ctx) => const ViewAllProductPage(),
      },
    );
  }
}
