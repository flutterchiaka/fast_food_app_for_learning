import 'package:fast_food_app_for_learning/constantas/app_color.dart';
import 'package:fast_food_app_for_learning/constantas/sizes.dart';
import 'package:fast_food_app_for_learning/extensions/sized_box_extension.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search ...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadius,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColors.greyColor,
                  )),
            ),
          ),
          4.widthBox,
          Container(
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyColor),
                borderRadius: BorderRadius.circular(
                  AppSizes.borderRadius,
                )),
            child: const Center(
              child: Badge(
                label: Text("2"),
                child: Icon(
                  Icons.shopping_basket,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
