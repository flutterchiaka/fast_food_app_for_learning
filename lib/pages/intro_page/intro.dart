import 'package:fast_food_app_for_learning/extensions/sized_box_extension.dart';
import 'package:fast_food_app_for_learning/pages/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constantas/app_color.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo image
            Image.asset(
              "assets/imgs/logo.png",
              height: 300,
            ),
            //Title
            Text(
              "Fast Food App",
              style: GoogleFonts.abrilFatface(
                fontSize: 32,
              ),
            ),

            10.heightBox,

            //description
            Text(
              "Your One-Stop App For Delicious Meals, Recipes, And Restaurant Orders!",
              style: GoogleFonts.lexend(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: AppColors.blackColor,
              ),
              textAlign: TextAlign.center,
            ),

            //Get started Button

            10.heightBox,
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.redAccenColor),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
