import 'package:fast_food_app_for_learning/constantas/app_color.dart';
import 'package:fast_food_app_for_learning/constantas/sizes.dart';
import 'package:fast_food_app_for_learning/extensions/sized_box_extension.dart';
import 'package:fast_food_app_for_learning/pages/home_page/widgets/home_page_appbar.dart';
import 'package:fast_food_app_for_learning/pages/home_page/widgets/product_gridview.dart';
import 'package:fast_food_app_for_learning/widgets/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomePageAppBar(),
            10.heightBox,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Restaurants",
                    style: GoogleFonts.abrilFatface(fontSize: 22),
                  ),
                  10.heightBox,
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomeAssetImage("assets/imgs/logo.png"),
                          ),
                        );
                      },
                    ),
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fast Foods",
                        style: GoogleFonts.abrilFatface(
                          fontSize: AppSizes.padding + 6,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/viewAllProducts");
                        },
                        child: Text(
                          "View All",
                          style: GoogleFonts.lexend(
                            fontSize: AppSizes.padding,
                            color: AppColors.redAccenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  const HomePageProductGridView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
